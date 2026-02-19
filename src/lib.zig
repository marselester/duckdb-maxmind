const std = @import("std");
const c = @import("duckdb");
const maxminddb = @import("maxminddb");
const duckifier = @import("duckifier.zig");

extern const duckdb_ext_api: c.duckdb_ext_api_v1;
const api = &duckdb_ext_api;

const allocator = std.heap.c_allocator;

// Creates, configures, and registers the read_mmdb() table function with DuckDB.
// This function is exported with C calling convention so it can be called from
// the C entrypoint in extension.c.
pub export fn register_read_function(conn: c.duckdb_connection) callconv(.c) c.duckdb_state {
    // Create an empty table function handle.
    const tf = api.duckdb_create_table_function.?();
    defer api.duckdb_destroy_table_function.?(@constCast(&tf));

    // Users will call the function SELECT * FROM read_mmdb('/path/to/my.mmdb').
    api.duckdb_table_function_set_name.?(tf, "read_mmdb");

    // Declare one VARCHAR parameter for the file path argument.
    const varchar_type = api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR);
    defer api.duckdb_destroy_logical_type.?(@constCast(&varchar_type));
    api.duckdb_table_function_add_parameter.?(tf, varchar_type);

    // Wire up the required callbacks:
    // - bind: called during planning to declare the result schema
    // - init: called before scanning to set up per-thread state
    // - function: called repeatedly during scanning to emit row batches
    api.duckdb_table_function_set_bind.?(tf, bindCallback);
    api.duckdb_table_function_set_init.?(tf, initCallback);
    api.duckdb_table_function_set_function.?(tf, scanCallback);
    api.duckdb_table_function_supports_projection_pushdown.?(tf, true);

    // Register the read_mmdb() table function with the DuckDB connection.
    return api.duckdb_register_table_function.?(conn, tf);
}

// BindData is stored during the bind phase and retrieved during the init phase.
const BindData = struct {
    // The file path passed as the first argument to read_mmdb('/my/path').
    // It's heap-allocated with a null terminator so it can be passed to C APIs.
    path: [:0]u8,
    db_type: maxminddb.DatabaseType,
};

fn destroyBindData(ptr: ?*anyopaque) callconv(.c) void {
    if (ptr) |p| {
        const d: *BindData = @ptrCast(@alignCast(p));
        allocator.free(d.path);
        allocator.destroy(d);
    }
}

// The Bind callback is called once during query planning.
// Its job is to declare the return schema (column names and types) of the table function.
// Record fields are flattened into top-level columns to enable projection pushdown.
fn bindCallback(info: c.duckdb_bind_info) callconv(.c) void {
    // Retrieve the file path argument read_mmdb('/my/path') at index 0.
    var path_param = api.duckdb_bind_get_parameter.?(info, 0);
    defer api.duckdb_destroy_value.?(&path_param);
    const path_cstr: [*c]u8 = api.duckdb_get_varchar.?(path_param);
    defer api.duckdb_free.?(@ptrCast(path_cstr));
    const path: []const u8 = std.mem.span(path_cstr);

    var db = maxminddb.Reader.mmap(allocator, path) catch |err| {
        api.duckdb_bind_set_error.?(info, @errorName(err).ptr);
        return;
    };
    defer db.unmap();

    const db_type = maxminddb.DatabaseType.new(db.metadata.database_type) orelse {
        api.duckdb_bind_set_error.?(info, "unsupported mmdb database type");
        return;
    };

    // Column 0: IP network.
    const varchar_type = api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR);
    defer api.duckdb_destroy_logical_type.?(@constCast(&varchar_type));
    api.duckdb_bind_add_result_column.?(info, "network", varchar_type);

    // Columns 1..N: flattened record fields (enables projection pushdown).
    switch (db_type) {
        inline else => |dt| {
            const T = dt.recordType();
            inline for (maxminddb.Fields.entries(T)) |f| {
                const col_type = duckifier.createDuckDBType(f.type);
                defer api.duckdb_destroy_logical_type.?(@constCast(&col_type));
                api.duckdb_bind_add_result_column.?(info, f.name, col_type);
            }
        },
    }

    // Hint the query planner with an upper bound on the number of rows.
    // node_count is the search tree size, not the exact number of data records.
    api.duckdb_bind_set_cardinality.?(info, db.metadata.node_count, false);

    const bind_data = allocator.create(BindData) catch {
        api.duckdb_bind_set_error.?(info, "allocate bind data");
        return;
    };

    bind_data.path = allocator.dupeZ(u8, path) catch {
        api.duckdb_bind_set_error.?(info, "allocate db path");
        allocator.destroy(bind_data);
        return;
    };

    bind_data.db_type = db_type;

    api.duckdb_bind_set_bind_data.?(info, bind_data, destroyBindData);
}

// InitData is stored during the init phase and retrieved during the scan phase.
// It tracks whether all rows have been emitted so the scan knows when to stop.
fn InitData(comptime T: type) type {
    const max_cols = maxminddb.Fields.count(T) + 1; // network + record fields

    return struct {
        db: maxminddb.Reader,
        it: maxminddb.Iterator(T),
        // Whether all rows have been emitted to DuckDB.
        done: bool,

        // Maps output chunk vector position to original column index.
        projected_cols: [max_cols]c.idx_t,
        num_projected: c.idx_t,

        const Self = @This();

        fn destroy(ptr: ?*anyopaque) callconv(.c) void {
            if (ptr) |p| {
                const d: *Self = @ptrCast(@alignCast(p));
                d.it.deinit();
                d.db.unmap();
                allocator.destroy(d);
            }
        }
    };
}

const allIPv4 = maxminddb.Network{
    .ip = std.net.Address.parseIp("0.0.0.0", 0) catch unreachable,
};
const allIPv6 = maxminddb.Network{
    .ip = std.net.Address.parseIp("::", 0) catch unreachable,
};

// The Init callback is called once before scanning starts.
// It's used to set up per-thread scan state.
fn initCallback(info: c.duckdb_init_info) callconv(.c) void {
    const bind_ptr = api.duckdb_init_get_bind_data.?(info);
    const bind_data: *BindData = @ptrCast(@alignCast(bind_ptr));

    switch (bind_data.db_type) {
        inline else => |dt| {
            const T = dt.recordType();
            const D = InitData(T);

            const init_data = allocator.create(D) catch {
                api.duckdb_init_set_error.?(info, "allocate init data");
                return;
            };

            init_data.db = maxminddb.Reader.mmap(allocator, bind_data.path) catch |err| {
                api.duckdb_init_set_error.?(info, @errorName(err).ptr);
                allocator.destroy(init_data);
                return;
            };

            // Read projected columns for projection pushdown.
            // Build Fields so the decoder skips non-projected record fields.
            const num_projected = api.duckdb_init_get_column_count.?(info);
            init_data.num_projected = num_projected;

            var fields: maxminddb.Fields = .{};
            for (0..num_projected) |out_idx| {
                const col_idx = api.duckdb_init_get_column_index.?(info, out_idx);
                init_data.projected_cols[out_idx] = col_idx;

                if (col_idx > 0) {
                    fields = fields.set(@intCast(col_idx - 1));
                }
            }

            // Use null when all fields are projected (no filtering needed).
            const only: ?maxminddb.Fields = if (fields.equal(maxminddb.Fields.all(T))) null else fields;

            const network = if (init_data.db.metadata.ip_version == 6)
                allIPv6
            else
                allIPv4;
            init_data.it = init_data.db.within(allocator, T, network, .{ .only = only }) catch |err| {
                api.duckdb_init_set_error.?(info, @errorName(err).ptr);
                init_data.db.unmap();
                allocator.destroy(init_data);
                return;
            };

            init_data.done = false;

            api.duckdb_init_set_init_data.?(info, init_data, D.destroy);
        },
    }
}

// The Scan callback is called repeatedly by DuckDB to get the next batch of rows.
// Each call should fill the output chunk with up to STANDARD_VECTOR_SIZE rows.
// When there are no more rows, set the chunk size to 0 to signal completion.
fn scanCallback(info: c.duckdb_function_info, output: c.duckdb_data_chunk) callconv(.c) void {
    const bind_ptr = api.duckdb_function_get_bind_data.?(info);
    const bind_data: *BindData = @ptrCast(@alignCast(bind_ptr));

    switch (bind_data.db_type) {
        inline else => |dt| {
            const T = dt.recordType();
            const D = InitData(T);

            const init_ptr = api.duckdb_function_get_init_data.?(info);
            const init_data: *D = @ptrCast(@alignCast(init_ptr));

            // If we already emitted all rows in a previous call, return an empty chunk.
            if (init_data.done) {
                api.duckdb_data_chunk_set_size.?(output, 0);
                return;
            }

            var i: u64 = 0;
            var buf: [64]u8 = undefined;
            const chunk_size: u64 = api.duckdb_vector_size.?();
            while (i < chunk_size) : (i += 1) {
                const item = init_data.it.next(allocator) catch |err| {
                    api.duckdb_function_set_error.?(info, @errorName(err).ptr);
                    return;
                } orelse {
                    // Mark that all rows have been emitted so the next call returns an empty chunk.
                    init_data.done = true;
                    break;
                };
                defer {
                    if (@hasDecl(T, "deinit")) {
                        item.record.deinit();
                    }
                }

                // Write only projected columns.
                var out_idx: u64 = 0;
                while (out_idx < init_data.num_projected) : (out_idx += 1) {
                    const col_idx = init_data.projected_cols[out_idx];
                    const vec = api.duckdb_data_chunk_get_vector.?(output, out_idx);

                    if (col_idx == 0) {
                        const net_str = std.fmt.bufPrint(&buf, "{f}", .{item.net}) catch |err| {
                            api.duckdb_function_set_error.?(info, @errorName(err).ptr);
                            return;
                        };
                        api.duckdb_vector_assign_string_element_len.?(vec, i, net_str.ptr, net_str.len);
                    } else {
                        duckifier.writeRecordField(T, item.record, vec, i, col_idx - 1);
                    }
                }
            }

            // Tell DuckDB how many rows we wrote into this chunk.
            api.duckdb_data_chunk_set_size.?(output, i);
        },
    }
}

pub export fn register_lookup_functions(conn: c.duckdb_connection) callconv(.c) c.duckdb_state {
    const varchar_type = api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR);
    defer api.duckdb_destroy_logical_type.?(@constCast(&varchar_type));

    // Register one function per database type, e.g., users can call SELECT geolite2_city(path, ip).
    //
    // Once duckdb_scalar_function_set_bind() is available in C extensions API,
    // we should be able to consolidate them into a single function lookup_mmdb().
    inline for (std.meta.fields(maxminddb.DatabaseType)) |field| {
        const dt: maxminddb.DatabaseType = @enumFromInt(field.value);
        const T = dt.recordType();

        const f = api.duckdb_create_scalar_function.?();
        defer api.duckdb_destroy_scalar_function.?(@constCast(&f));

        api.duckdb_scalar_function_set_name.?(f, field.name);
        api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // path
        api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // ip

        const return_type = duckifier.createDuckDBType(T);
        defer api.duckdb_destroy_logical_type.?(@constCast(&return_type));
        api.duckdb_scalar_function_set_return_type.?(f, return_type);

        api.duckdb_scalar_function_set_function.?(f, lookupCallback(T));

        if (api.duckdb_register_scalar_function.?(conn, f) == c.DuckDBError) {
            return c.DuckDBError;
        }
    }

    return c.DuckDBSuccess;
}

/// Returns a scalar function callback for a specific record type.
fn lookupCallback(comptime T: type) c.duckdb_scalar_function_t {
    return struct {
        fn callback(
            info: c.duckdb_function_info,
            input: c.duckdb_data_chunk,
            output: c.duckdb_vector,
        ) callconv(.c) void {
            const input_size = api.duckdb_data_chunk_get_size.?(input);
            if (input_size == 0) {
                return;
            }

            const path_vec = api.duckdb_data_chunk_get_vector.?(input, 0);
            const ip_vec = api.duckdb_data_chunk_get_vector.?(input, 1);

            const path_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
                api.duckdb_vector_get_data.?(path_vec),
            ));
            const ip_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
                api.duckdb_vector_get_data.?(ip_vec),
            ));

            // Read path from row 0 (constant across the batch).
            const path_len = api.duckdb_string_t_length.?(path_data[0]);
            const path_ptr = api.duckdb_string_t_data.?(&path_data[0]);
            const path = path_ptr[0..path_len];

            var db = maxminddb.Reader.mmap(allocator, path) catch |err| {
                api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                return;
            };
            defer db.unmap();

            var arena = std.heap.ArenaAllocator.init(allocator);
            defer arena.deinit();
            const arena_allocator = arena.allocator();

            var i: u64 = 0;
            while (i < input_size) : (i += 1) {
                const ip_len = api.duckdb_string_t_length.?(ip_data[i]);
                const ip_ptr = api.duckdb_string_t_data.?(&ip_data[i]);
                const ip_str = ip_ptr[0..ip_len];

                const ip = std.net.Address.parseIp(ip_str, 0) catch {
                    duckifier.writeNull(T, output, i);
                    continue;
                };

                const record = db.lookup(arena_allocator, T, &ip, .{}) catch |err| {
                    if (err == maxminddb.Error.AddressNotFound) {
                        duckifier.writeNull(T, output, i);
                        continue;
                    }

                    api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                    return;
                };

                duckifier.writeValue(T, record, output, i);

                _ = arena.reset(std.heap.ArenaAllocator.ResetMode.retain_capacity);
            }
        }
    }.callback;
}
