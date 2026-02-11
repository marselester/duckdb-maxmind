const std = @import("std");
const c = @import("duckdb");
const maxminddb = @import("maxminddb");
const duckifier = @import("duckifier.zig");

// Use the C allocator so that memory allocated here is compatible with C callbacks.
// DuckDB will call our destroy functions from C code.
const allocator = std.heap.c_allocator;

// Creates, configures, and registers the read_mmdb() table function with DuckDB.
// This function is exported with C calling convention so it can be called from
// the C entrypoint in extension.c.
pub export fn register_table_function(conn: c.duckdb_connection) callconv(.c) c.duckdb_state {
    // Create an empty table function handle.
    const tf = c.duckdb_create_table_function();
    defer c.duckdb_destroy_table_function(@constCast(&tf));

    // Users will call the function SELECT * FROM read_mmdb('/path/to/my.mmdb').
    c.duckdb_table_function_set_name(tf, "read_mmdb");

    // Declare one VARCHAR parameter for the file path argument.
    const varchar_type = c.duckdb_create_logical_type(c.DUCKDB_TYPE_VARCHAR);
    defer c.duckdb_destroy_logical_type(@constCast(&varchar_type));
    c.duckdb_table_function_add_parameter(tf, varchar_type);

    // Wire up the required callbacks:
    // - bind: called during planning to declare the result schema
    // - init: called before scanning to set up per-thread state
    // - function: called repeatedly during scanning to emit row batches
    c.duckdb_table_function_set_bind(tf, bindCallback);
    c.duckdb_table_function_set_init(tf, initCallback);
    c.duckdb_table_function_set_function(tf, scanCallback);

    // Register the read_mmdb() table function with the DuckDB connection.
    return c.duckdb_register_table_function(conn, tf);
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
// Here we dynamically construct DuckDB's STRUCT type at runtime.
fn bindCallback(info: c.duckdb_bind_info) callconv(.c) void {
    // Retrieve the file path argument read_mmdb('/my/path') at index 0.
    var path_param = c.duckdb_bind_get_parameter(info, 0);
    defer c.duckdb_destroy_value(&path_param);
    const path_cstr: [*c]u8 = c.duckdb_get_varchar(path_param);
    defer c.duckdb_free(@ptrCast(path_cstr));
    const path: []const u8 = std.mem.span(path_cstr);

    var db = maxminddb.Reader.mmap(allocator, path) catch {
        c.duckdb_bind_set_error(info, "open mmdb");
        return;
    };
    defer db.unmap();

    const db_type = maxminddb.DatabaseType.new(db.metadata.database_type) orelse {
        c.duckdb_bind_set_error(info, "unsupported mmdb database type");
        return;
    };

    // IP network column.
    const varchar_type = c.duckdb_create_logical_type(c.DUCKDB_TYPE_VARCHAR);
    defer c.duckdb_destroy_logical_type(@constCast(&varchar_type));
    c.duckdb_bind_add_result_column(info, "network", varchar_type);

    // Record column matching the database schema.
    switch (db_type) {
        inline else => |dt| {
            const record_type = duckifier.createDuckDBType(dt.recordType());
            defer c.duckdb_destroy_logical_type(@constCast(&record_type));
            c.duckdb_bind_add_result_column(info, "r", record_type);
        },
    }

    // Tell the query planner exactly how many rows we will emit.
    c.duckdb_bind_set_cardinality(info, db.metadata.node_count, true);

    const bind_data = allocator.create(BindData) catch {
        c.duckdb_bind_set_error(info, "allocate bind data");
        return;
    };

    bind_data.path = allocator.dupeZ(u8, path) catch {
        c.duckdb_bind_set_error(info, "allocate db path");
        allocator.destroy(bind_data);
        return;
    };

    bind_data.db_type = db_type;

    c.duckdb_bind_set_bind_data(info, bind_data, destroyBindData);
}

// InitData is stored during the init phase and retrieved during the scan phase.
// It tracks whether all rows have been emitted so the scan knows when to stop.
fn InitData(comptime T: type) type {
    return struct {
        db: maxminddb.Reader,
        it: maxminddb.Iterator(T),
        // Whether all rows have been emitted to DuckDB.
        done: bool,

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
    const bind_ptr = c.duckdb_init_get_bind_data(info);
    const bind_data: *BindData = @ptrCast(@alignCast(bind_ptr));

    switch (bind_data.db_type) {
        inline else => |dt| {
            const T = dt.recordType();
            const D = InitData(T);

            const init_data = allocator.create(D) catch {
                c.duckdb_init_set_error(info, "allocate init data");
                return;
            };

            init_data.db = maxminddb.Reader.mmap(allocator, bind_data.path) catch {
                c.duckdb_init_set_error(info, "open mmdb");
                allocator.destroy(init_data);
                return;
            };

            const network = if (init_data.db.metadata.ip_version == 6)
                allIPv6
            else
                allIPv4;
            init_data.it = init_data.db.within(allocator, T, network) catch {
                c.duckdb_init_set_error(info, "traverse mmdb");
                init_data.db.unmap();
                allocator.destroy(init_data);
                return;
            };

            init_data.done = false;

            c.duckdb_init_set_init_data(info, init_data, D.destroy);
        },
    }
}

// The Scan callback is called repeatedly by DuckDB to get the next batch of rows.
// Each call should fill the output chunk with up to STANDARD_VECTOR_SIZE rows.
// When there are no more rows, set the chunk size to 0 to signal completion.
fn scanCallback(info: c.duckdb_function_info, output: c.duckdb_data_chunk) callconv(.c) void {
    const bind_ptr = c.duckdb_function_get_bind_data(info);
    const bind_data: *BindData = @ptrCast(@alignCast(bind_ptr));

    switch (bind_data.db_type) {
        inline else => |dt| {
            const T = dt.recordType();
            const D = InitData(T);

            const init_ptr = c.duckdb_function_get_init_data(info);
            const init_data: *D = @ptrCast(@alignCast(init_ptr));

            // If we already emitted all rows in a previous call, return an empty chunk.
            if (init_data.done) {
                c.duckdb_data_chunk_set_size(output, 0);
                return;
            }

            // Get the output vectors for columns 0 and 1 (network and record).
            const network_vec = c.duckdb_data_chunk_get_vector(output, 0);
            const record_vec = c.duckdb_data_chunk_get_vector(output, 1);

            var i: u64 = 0;
            const chunk_size: u64 = c.duckdb_vector_size();
            while (i < chunk_size) : (i += 1) {
                const item = init_data.it.next() catch {
                    c.duckdb_function_set_error(info, "next item");
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

                // Write network column.
                var buf: [64]u8 = undefined;
                const net_str = formatNetwork(item.net, &buf);
                c.duckdb_vector_assign_string_element_len(network_vec, i, net_str.ptr, net_str.len);

                // Write record column.
                duckifier.writeValue(T, item.record, record_vec, i);
            }

            // Tell DuckDB how many rows we wrote into this chunk.
            c.duckdb_data_chunk_set_size(output, i);
        },
    }
}

fn formatNetwork(net: maxminddb.Network, buf: []u8) []const u8 {
    return switch (net.ip.any.family) {
        std.posix.AF.INET => {
            const b = std.mem.asBytes(&net.ip.in.sa.addr);
            return std.fmt.bufPrint(buf, "{}.{}.{}.{}/{}", .{
                b[0], b[1], b[2], b[3], net.prefix_len,
            }) catch "";
        },
        std.posix.AF.INET6 => {
            const b = net.ip.in6.sa.addr;
            return std.fmt.bufPrint(
                buf,
                "{x:0>4}:{x:0>4}:{x:0>4}:{x:0>4}:{x:0>4}:{x:0>4}:{x:0>4}:{x:0>4}/{}",
                .{
                    std.mem.readInt(u16, b[0..2], .big),
                    std.mem.readInt(u16, b[2..4], .big),
                    std.mem.readInt(u16, b[4..6], .big),
                    std.mem.readInt(u16, b[6..8], .big),
                    std.mem.readInt(u16, b[8..10], .big),
                    std.mem.readInt(u16, b[10..12], .big),
                    std.mem.readInt(u16, b[12..14], .big),
                    std.mem.readInt(u16, b[14..16], .big),
                    net.prefix_len,
                },
            ) catch "";
        },
        else => "",
    };
}
