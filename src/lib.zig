const std = @import("std");
const c = @import("duckdb");
const maxminddb = @import("maxminddb");

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

// BindData is stored during the bind phase and retrieved during the scan phase.
// It tracks whether all rows have been emitted so the scan knows when to stop.
const BindData = struct {
    // The file path passed as the first argument to read_mmdb('/my/path').
    // It's heap-allocated with a null terminator so it can be passed to C APIs.
    path: [:0]u8,
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

    // Create DuckDB logical type handles for each struct member.
    // These are opaque handles that describe column types in DuckDB's type system.
    const uint_type = c.duckdb_create_logical_type(c.DUCKDB_TYPE_UINTEGER);
    defer c.duckdb_destroy_logical_type(@constCast(&uint_type));

    const varchar_type = c.duckdb_create_logical_type(c.DUCKDB_TYPE_VARCHAR);
    defer c.duckdb_destroy_logical_type(@constCast(&varchar_type));

    // Build arrays of member types and member names for the struct.
    // The order defines the struct layout: index 0 = geoname_id, 1 = name.
    var member_types = [_]c.duckdb_logical_type{
        uint_type,
        varchar_type,
    };
    var member_names = [_][*c]const u8{
        "geoname_id",
        "name",
    };

    // Create the composite STRUCT type from the member arrays.
    const struct_type = c.duckdb_create_struct_type(
        &member_types,
        @ptrCast(&member_names),
        member_names.len,
    );
    defer c.duckdb_destroy_logical_type(@constCast(&struct_type));

    // Declare one result column named "row" with the struct type.
    // This tells DuckDB what schema `SELECT * FROM read_mmdb()` will return.
    c.duckdb_bind_add_result_column(info, "row", struct_type);
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

    c.duckdb_bind_set_bind_data(info, bind_data, destroyBindData);
}

const InitData = struct {
    db: maxminddb.Reader,
    it: maxminddb.Iterator(maxminddb.geolite2.City),
    // Whether all rows have been emitted to DuckDB.
    done: bool,
};

fn destroyInitData(ptr: ?*anyopaque) callconv(.c) void {
    if (ptr) |p| {
        const d: *InitData = @ptrCast(@alignCast(p));
        d.it.deinit();
        d.db.unmap();
        allocator.destroy(d);
    }
}

// The Init callback is called once before scanning starts.
// It's used to set up per-thread scan state.
fn initCallback(info: c.duckdb_init_info) callconv(.c) void {
    const bind_ptr = c.duckdb_init_get_bind_data(info);
    const bind_data: *BindData = @ptrCast(@alignCast(bind_ptr));

    const init_data = allocator.create(InitData) catch {
        c.duckdb_init_set_error(info, "allocate init data");
        return;
    };

    init_data.db = maxminddb.Reader.mmap(allocator, bind_data.path) catch {
        c.duckdb_init_set_error(info, "open mmdb");
        allocator.destroy(init_data);
        return;
    };

    const network = maxminddb.Network{
        .ip = std.net.Address.parseIp("0.0.0.0", 0) catch {
            c.duckdb_init_set_error(info, "parse 0.0.0.0");
            init_data.db.unmap();
            allocator.destroy(init_data);
            return;
        },
    };
    init_data.it = init_data.db.within(allocator, maxminddb.geolite2.City, network) catch {
        c.duckdb_init_set_error(info, "traverse mmdb");
        init_data.db.unmap();
        allocator.destroy(init_data);
        return;
    };

    init_data.done = false;

    c.duckdb_init_set_init_data(info, init_data, destroyInitData);
}

// The Scan callback is called repeatedly by DuckDB to get the next batch of rows.
// Each call should fill the output chunk with up to STANDARD_VECTOR_SIZE rows.
// When there are no more rows, set the chunk size to 0 to signal completion.
fn scanCallback(info: c.duckdb_function_info, output: c.duckdb_data_chunk) callconv(.c) void {
    const init_ptr = c.duckdb_function_get_init_data(info);
    const init_data: *InitData = @ptrCast(@alignCast(init_ptr));

    // If we already emitted all rows in a previous call, return an empty chunk.
    if (init_data.done) {
        c.duckdb_data_chunk_set_size(output, 0);
        return;
    }

    // Get the output vector for column 0 (our single "row" column is a struct).
    const struct_vec = c.duckdb_data_chunk_get_vector(output, 0);

    // A struct vector doesn't hold data directly,
    // its data lives in child vectors (one per struct field).
    const id_vec = c.duckdb_struct_vector_get_child(struct_vec, 0); // UINTEGER child at index 0
    const name_vec = c.duckdb_struct_vector_get_child(struct_vec, 1); // VARCHAR child at index 1

    // For flat numeric types (INTEGER, DOUBLE), get a raw pointer to the underlying
    // contiguous array and write values directly.
    // DuckDB stores these as dense arrays.
    const id_data: [*]u32 = @ptrCast(@alignCast(c.duckdb_vector_get_data(id_vec)));

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
        defer item.record.deinit();

        // Write the ID directly into the vector.
        id_data[i] = item.record.city.geoname_id;

        var city: []const u8 = "";
        if (item.record.city.names) |city_names| {
            city = city_names.get("en") orelse "";
        }

        // For VARCHAR fields, we cannot write raw pointers because
        // DuckDB manages string storage internally.
        c.duckdb_vector_assign_string_element_len(
            name_vec,
            i,
            city.ptr,
            city.len,
        );
    }

    // Tell DuckDB how many rows we wrote into this chunk.
    c.duckdb_data_chunk_set_size(output, i);
}
