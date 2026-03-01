const std = @import("std");
const c = @import("duckdb");
const maxminddb = @import("maxminddb");
const duckifier = @import("duckifier.zig");
const filter = @import("filter.zig");

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

    // Declare VARCHAR parameters for the file path and optional network filter.
    const varchar_type = api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR);
    defer api.duckdb_destroy_logical_type.?(@constCast(&varchar_type));

    // Positional: file path to the mmdb database.
    api.duckdb_table_function_add_parameter.?(tf, varchar_type);
    // Optional named: network filter, e.g., read_mmdb('my.mmdb', network='1.0.0.0/8').
    api.duckdb_table_function_add_named_parameter.?(tf, "network", varchar_type);

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
    network: maxminddb.Network,
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
    if (api.duckdb_is_null_value.?(path_param)) {
        api.duckdb_bind_set_error.?(info, "path must not be NULL");
        return;
    }
    const path_cstr: [*c]u8 = api.duckdb_get_varchar.?(path_param);
    defer api.duckdb_free.?(@ptrCast(path_cstr));
    const path: []const u8 = std.mem.span(path_cstr);

    // Parse optional network argument.
    // It defaults to 0.0.0.0 for IPv4 and :: for IPv6 databases.
    var network: ?maxminddb.Network = null;
    var network_param = api.duckdb_bind_get_named_parameter.?(info, "network");
    if (network_param != null) {
        defer api.duckdb_destroy_value.?(&network_param);

        if (!api.duckdb_is_null_value.?(network_param)) {
            if (api.duckdb_get_varchar.?(network_param)) |network_cstr| {
                defer api.duckdb_free.?(@ptrCast(network_cstr));
                const network_str: []const u8 = std.mem.span(network_cstr);

                network = maxminddb.Network.parse(network_str) catch {
                    api.duckdb_bind_set_error.?(info, "parsing network");
                    return;
                };
            }
        }
    }

    var db = maxminddb.Reader.mmap(allocator, path) catch |err| {
        api.duckdb_bind_set_error.?(info, @errorName(err).ptr);
        return;
    };
    defer db.unmap();

    if (network == null) {
        network = if (db.metadata.ip_version == 6)
            maxminddb.Network.all_ipv6
        else
            maxminddb.Network.all_ipv4;
    }

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
            inline for (std.meta.fields(T)) |f| {
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

    bind_data.network = network.?;

    bind_data.db_type = db_type;

    api.duckdb_bind_set_bind_data.?(info, bind_data, destroyBindData);
}

// InitData is stored during the init phase and retrieved during the scan phase.
// It tracks whether all rows have been emitted so the scan knows when to stop.
fn InitData(comptime T: type) type {
    const fields = std.meta.fields(T);
    const max_cols = fields.len + 1; // network + record fields

    return struct {
        db: maxminddb.Reader,
        it: maxminddb.Iterator(T),
        // Whether all rows have been emitted to DuckDB.
        done: bool,

        // Maps output chunk vector position to original column index.
        projected_cols: [max_cols]c.idx_t,
        num_projected: c.idx_t,

        // Field names for projection pushdown filtering.
        field_names: filter.Fields(fields.len),

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
            // Build field names so the decoder skips non-projected record fields.
            const num_projected = api.duckdb_init_get_column_count.?(info);
            init_data.num_projected = num_projected;

            init_data.field_names = .{};
            for (0..num_projected) |out_idx| {
                const col_idx = api.duckdb_init_get_column_index.?(info, out_idx);
                init_data.projected_cols[out_idx] = col_idx;

                if (col_idx > 0) {
                    inline for (std.meta.fields(T), 0..) |f, idx| {
                        if (idx == col_idx - 1) {
                            init_data.field_names.append(f.name);
                        }
                    }
                }
            }

            init_data.it = init_data.db.within(
                allocator,
                T,
                bind_data.network,
                .{ .only = init_data.field_names.slice() },
            ) catch |err| {
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
                const item = init_data.it.next() catch |err| {
                    api.duckdb_function_set_error.?(info, @errorName(err).ptr);
                    return;
                } orelse {
                    // Mark that all rows have been emitted so the next call returns an empty chunk.
                    init_data.done = true;
                    break;
                };

                // Write only projected columns.
                var out_idx: u64 = 0;
                while (out_idx < init_data.num_projected) : (out_idx += 1) {
                    const col_idx = init_data.projected_cols[out_idx];
                    const vec = api.duckdb_data_chunk_get_vector.?(output, out_idx);

                    if (col_idx == 0) {
                        const net_str = std.fmt.bufPrint(&buf, "{f}", .{item.network}) catch |err| {
                            api.duckdb_function_set_error.?(info, @errorName(err).ptr);
                            return;
                        };
                        api.duckdb_vector_assign_string_element_len.?(vec, i, net_str.ptr, net_str.len);
                    } else {
                        duckifier.writeRecordField(T, item.value, vec, i, col_idx - 1);
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

    // Register one function per database type, e.g., geolite_city(path, ip, fields).
    inline for (std.meta.fields(maxminddb.DatabaseType)) |field| {
        const dt: maxminddb.DatabaseType = @enumFromInt(field.value);
        const T = dt.recordType();

        const f = api.duckdb_create_scalar_function.?();
        defer api.duckdb_destroy_scalar_function.?(@constCast(&f));

        api.duckdb_scalar_function_set_name.?(f, field.name);
        api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // path
        api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // ip
        api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // fields

        const return_type = duckifier.createDuckDBType(T);
        defer api.duckdb_destroy_logical_type.?(@constCast(&return_type));
        api.duckdb_scalar_function_set_return_type.?(f, return_type);

        api.duckdb_scalar_function_set_function.?(f, lookupCallback(T));

        if (api.duckdb_register_scalar_function.?(conn, f) == c.DuckDBError) {
            return c.DuckDBError;
        }
    }

    // Register mmdb_record(path, ip, fields) to lookup in any MMDB file.
    // It returns VARCHAR containing JSON since any.Value is recursive
    // and can't be mapped to a fixed DuckDB type.
    const f = api.duckdb_create_scalar_function.?();
    defer api.duckdb_destroy_scalar_function.?(@constCast(&f));

    api.duckdb_scalar_function_set_name.?(f, "mmdb_record");
    api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // path
    api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // ip
    api.duckdb_scalar_function_add_parameter.?(f, varchar_type); // fields

    api.duckdb_scalar_function_set_return_type.?(f, varchar_type);

    api.duckdb_scalar_function_set_function.?(f, lookupAnyCallback);

    if (api.duckdb_register_scalar_function.?(conn, f) == c.DuckDBError) {
        return c.DuckDBError;
    }

    return c.DuckDBSuccess;
}

// Returns a scalar function callback for a specific record type.
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
            const fields_vec = api.duckdb_data_chunk_get_vector.?(input, 2);

            const path_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
                api.duckdb_vector_get_data.?(path_vec),
            ));
            const ip_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
                api.duckdb_vector_get_data.?(ip_vec),
            ));
            const fields_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
                api.duckdb_vector_get_data.?(fields_vec),
            ));

            // Fields are read from row 0 (constant across the batch).
            const fields_len = api.duckdb_string_t_length.?(fields_data[0]);
            const fields_str = if (fields_len > 0)
                api.duckdb_string_t_data.?(&fields_data[0])[0..fields_len]
            else
                "";
            const field_names = filter.Fields(std.meta.fields(T).len).parse(fields_str, ',');

            // We should re-open the Reader only when the path changes.
            const first_path_len = api.duckdb_string_t_length.?(path_data[0]);
            const first_path_ptr = api.duckdb_string_t_data.?(&path_data[0]);
            var current_path: []const u8 = first_path_ptr[0..first_path_len];

            var db = maxminddb.Reader.mmap(allocator, current_path) catch |err| {
                api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                return;
            };
            defer db.unmap();

            var arena = std.heap.ArenaAllocator.init(allocator);
            defer arena.deinit();
            const arena_allocator = arena.allocator();

            var i: u64 = 0;
            while (i < input_size) : (i += 1) {
                const row_path_len = api.duckdb_string_t_length.?(path_data[i]);
                const row_path_ptr = api.duckdb_string_t_data.?(&path_data[i]);
                const row_path = row_path_ptr[0..row_path_len];

                if (!std.mem.eql(u8, row_path, current_path)) {
                    const new_db = maxminddb.Reader.mmap(allocator, row_path) catch |err| {
                        api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                        return;
                    };

                    db.unmap();
                    db = new_db;

                    current_path = row_path;
                }

                const ip_len = api.duckdb_string_t_length.?(ip_data[i]);
                const ip_ptr = api.duckdb_string_t_data.?(&ip_data[i]);
                const ip_str = ip_ptr[0..ip_len];

                const ip = std.net.Address.parseIp(ip_str, 0) catch {
                    duckifier.writeNull(T, output, i);
                    continue;
                };

                const result = db.lookup(arena_allocator, T, ip, .{ .only = field_names.slice() }) catch |err| {
                    api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                    return;
                } orelse {
                    duckifier.writeNull(T, output, i);
                    continue;
                };

                duckifier.writeValue(T, result.value, output, i);

                _ = arena.reset(.retain_capacity);
            }
        }
    }.callback;
}

// Real MMDB databases have at most ~15 top-level fields.
const max_mmdb_fields = 32;
// 4KB should be enough to decode most of database records.
const json_buf_size = 4096;

// Scalar function callback for mmdb_record(path, ip, fields).
// Decodes any MMDB record as any.Value and returns JSON as VARCHAR.
fn lookupAnyCallback(
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
    const fields_vec = api.duckdb_data_chunk_get_vector.?(input, 2);

    const path_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
        api.duckdb_vector_get_data.?(path_vec),
    ));
    const ip_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
        api.duckdb_vector_get_data.?(ip_vec),
    ));
    const fields_data: [*]c.duckdb_string_t = @ptrCast(@alignCast(
        api.duckdb_vector_get_data.?(fields_vec),
    ));

    // Fields are read from row 0 (constant across the batch).
    const fields_len = api.duckdb_string_t_length.?(fields_data[0]);
    const fields_str = if (fields_len > 0)
        api.duckdb_string_t_data.?(&fields_data[0])[0..fields_len]
    else
        "";
    const field_names = filter.Fields(max_mmdb_fields).parse(fields_str, ',');

    // We should re-open the Reader only when the path changes.
    const first_path_len = api.duckdb_string_t_length.?(path_data[0]);
    const first_path_ptr = api.duckdb_string_t_data.?(&path_data[0]);
    var current_path: []const u8 = first_path_ptr[0..first_path_len];

    var db = maxminddb.Reader.mmap(allocator, current_path) catch |err| {
        api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
        return;
    };
    defer db.unmap();

    var buf: [json_buf_size]u8 = undefined;
    var w = std.io.Writer.fixed(&buf);

    var arena = std.heap.ArenaAllocator.init(allocator);
    defer arena.deinit();
    const arena_allocator = arena.allocator();

    var i: u64 = 0;
    while (i < input_size) : (i += 1) {
        const row_path_len = api.duckdb_string_t_length.?(path_data[i]);
        const row_path_ptr = api.duckdb_string_t_data.?(&path_data[i]);
        const row_path = row_path_ptr[0..row_path_len];

        if (!std.mem.eql(u8, row_path, current_path)) {
            const new_db = maxminddb.Reader.mmap(allocator, row_path) catch |err| {
                api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                return;
            };

            db.unmap();
            db = new_db;

            current_path = row_path;
        }

        const ip_len = api.duckdb_string_t_length.?(ip_data[i]);
        const ip_ptr = api.duckdb_string_t_data.?(&ip_data[i]);
        const ip_str = ip_ptr[0..ip_len];

        const ip = std.net.Address.parseIp(ip_str, 0) catch {
            duckifier.writeNull([]const u8, output, i);
            continue;
        };

        const result = db.lookup(
            arena_allocator,
            maxminddb.any.Value,
            ip,
            .{ .only = field_names.slice() },
        ) catch |err| {
            api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
            return;
        } orelse {
            duckifier.writeNull([]const u8, output, i);
            continue;
        };

        // Format the record as JSON into a buffer, falling back to heap allocation
        // via the arena for records that exceed the buffer size.
        w.end = 0;
        if (result.value.format(&w)) {
            api.duckdb_vector_assign_string_element_len.?(output, i, w.buffer.ptr, w.end);
        } else |_| {
            var list: std.ArrayListUnmanaged(u8) = .{};
            result.value.format(list.writer(arena_allocator)) catch |err| {
                api.duckdb_scalar_function_set_error.?(info, @errorName(err).ptr);
                return;
            };

            api.duckdb_vector_assign_string_element_len.?(output, i, list.items.ptr, list.items.len);
        }

        _ = arena.reset(.retain_capacity);
    }
}
