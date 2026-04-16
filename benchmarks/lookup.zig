const std = @import("std");
const c = @cImport(@cInclude("duckdb.h"));

const default_db_path = "GeoLite2-City.mmdb";
const default_num_lookups: u64 = 1_000_000;
const default_fields = "";

pub fn main(init: std.process.Init) !void {
    const allocator = init.gpa;
    const io = init.io;

    var args = try std.process.Args.Iterator.initAllocator(init.minimal.args, allocator);
    defer args.deinit();
    _ = args.skip();
    const db_path = args.next() orelse default_db_path;
    const num_lookups = if (args.next()) |arg|
        try std.fmt.parseUnsigned(u64, arg, 10)
    else
        default_num_lookups;
    const fields = args.next() orelse default_fields;

    std.debug.print("Benchmarking with:\n", .{});
    std.debug.print("  Database: {s}\n", .{db_path});
    std.debug.print("  Lookups:  {d}\n", .{num_lookups});
    std.debug.print("  Fields:   '{s}'\n\n", .{fields});

    // Open DuckDB in-memory and load the extension.
    var db: c.duckdb_database = undefined;
    var conn: c.duckdb_connection = undefined;

    var config: c.duckdb_config = undefined;
    if (c.duckdb_create_config(&config) == c.DuckDBError) {
        return error.DuckDBConfig;
    }
    defer c.duckdb_destroy_config(&config);

    _ = c.duckdb_set_config(config, "allow_unsigned_extensions", "true");

    if (c.duckdb_open_ext(null, &db, config, null) == c.DuckDBError) {
        return error.DuckDBOpen;
    }
    defer c.duckdb_close(&db);

    if (c.duckdb_connect(db, &conn) == c.DuckDBError) {
        return error.DuckDBConnect;
    }
    defer c.duckdb_disconnect(&conn);

    try query(conn, "LOAD 'zig-out/lib/maxmind.duckdb_extension'");

    // Generate a table of random IPs so DuckDB processes them in batches.
    std.debug.print("Generating random IPs...\n", .{});
    const create_q = try std.fmt.allocPrintSentinel(
        allocator,
        \\CREATE TABLE ips AS SELECT
        \\    (random()*255)::int || '.' ||
        \\    (random()*255)::int || '.' ||
        \\    (random()*255)::int || '.' ||
        \\    (random()*255)::int AS ip
        \\FROM generate_series(1, {d})
    ,
        .{num_lookups},
        0,
    );
    defer allocator.free(create_q);

    try query(conn, create_q);

    // Run the lookup as a single batched query.
    const lookup_q = try std.fmt.allocPrintSentinel(
        allocator,
        "SELECT geolite_city('{s}', ip, '{s}') FROM ips",
        .{ db_path, fields },
        0,
    );
    defer allocator.free(lookup_q);

    std.debug.print("Starting benchmark...\n", .{});
    const timer_start = std.Io.Clock.Timestamp.now(io, .awake);

    var result: c.duckdb_result = undefined;
    if (c.duckdb_query(conn, lookup_q.ptr, &result) == c.DuckDBError) {
        const err = c.duckdb_result_error(&result);
        std.debug.print("Query error: {s}\n", .{std.mem.span(err)});
        c.duckdb_destroy_result(&result);

        return error.DuckDBQuery;
    }

    const elapsed_ns: u64 = @intCast(timer_start.untilNow(io).raw.nanoseconds);
    const row_count = c.duckdb_row_count(&result);
    c.duckdb_destroy_result(&result);

    const elapsed_s: f64 = @as(f64, @floatFromInt(elapsed_ns)) /
        @as(f64, @floatFromInt(std.time.ns_per_s));
    const lookups_per_second: f64 = if (elapsed_s > 0)
        @as(f64, @floatFromInt(num_lookups)) / elapsed_s
    else
        0.0;

    std.debug.print("\n--- Benchmark Finished ---\n", .{});
    std.debug.print("Rows:               {d}\n", .{row_count});
    std.debug.print("Elapsed Time:       {d:.2} s\n", .{elapsed_s});
    std.debug.print("Lookups Per Second: {d:.0}\n", .{lookups_per_second});
}

fn query(conn: c.duckdb_connection, sql: [*c]const u8) !void {
    var result: c.duckdb_result = undefined;
    if (c.duckdb_query(conn, sql, &result) == c.DuckDBError) {
        const err = c.duckdb_result_error(&result);
        std.debug.print("Query error: {s}\n", .{std.mem.span(err)});
        c.duckdb_destroy_result(&result);

        return error.DuckDBQuery;
    }

    c.duckdb_destroy_result(&result);
}
