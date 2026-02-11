const std = @import("std");
const c = @import("duckdb");

extern const duckdb_ext_api: c.duckdb_ext_api_v1;
const api = &duckdb_ext_api;

/// Creates a DuckDB logical type that mirrors a Zig type.
pub fn createDuckDBType(comptime T: type) c.duckdb_logical_type {
    switch (T) {
        []const u8 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR),
        u16 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_USMALLINT),
        u32 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_UINTEGER),
        u64 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_UBIGINT),
        i32 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_INTEGER),
        f32 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_FLOAT),
        f64 => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_DOUBLE),
        bool => return api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_BOOLEAN),
        else => {},
    }

    switch (@typeInfo(T)) {
        .optional => |opt| return createDuckDBType(opt.child),
        .@"struct" => {
            // MAP
            if (@hasDecl(T, "KV")) {
                const key_type = api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR);
                defer api.duckdb_destroy_logical_type.?(@constCast(&key_type));

                const val_type = api.duckdb_create_logical_type.?(c.DUCKDB_TYPE_VARCHAR);
                defer api.duckdb_destroy_logical_type.?(@constCast(&val_type));

                return api.duckdb_create_map_type.?(key_type, val_type);
            }

            // LIST
            if (@hasDecl(T, "Slice")) {
                const elem_type = createDuckDBType(std.meta.Child(T.Slice));
                defer api.duckdb_destroy_logical_type.?(@constCast(&elem_type));

                return api.duckdb_create_list_type.?(elem_type);
            }

            // STRUCT
            const n = fieldCount(T);
            var member_types: [n]c.duckdb_logical_type = undefined;
            var member_names: [n][*c]const u8 = undefined;
            inline for (std.meta.fields(T)) |f| {
                // Skip struct fields whose name starts with an underscore, e.g., _arena.
                if (f.name[0] == '_') {
                    continue;
                }

                const idx = duckdbFieldIndex(T, f.name);
                member_types[idx] = createDuckDBType(f.type);
                member_names[idx] = @ptrCast(f.name.ptr);
            }

            const result = api.duckdb_create_struct_type.?(
                &member_types,
                @ptrCast(&member_names),
                n,
            );
            for (&member_types) |*t| {
                api.duckdb_destroy_logical_type.?(t);
            }

            return result;
        },
        else => @compileError("unsupported type: " ++ @typeName(T)),
    }
}

/// Returns the number of fields in a struct.
fn fieldCount(comptime T: type) comptime_int {
    var count = 0;
    for (std.meta.fields(T)) |f| {
        if (f.name[0] != '_') {
            count += 1;
        }
    }

    return count;
}

/// Returns the DuckDB child index for a named struct field.
fn duckdbFieldIndex(comptime T: type, comptime name: [:0]const u8) comptime_int {
    var idx = 0;
    for (std.meta.fields(T)) |f| {
        if (f.name[0] == '_') {
            continue;
        }

        if (std.mem.eql(u8, f.name, name)) {
            return idx;
        }

        idx += 1;
    }

    unreachable;
}

/// Writes a value to a DuckDB vector at the given row index.
pub fn writeValue(comptime T: type, value: T, vector: c.duckdb_vector, row: u64) void {
    switch (T) {
        []const u8 => {
            api.duckdb_vector_assign_string_element_len.?(vector, row, value.ptr, value.len);
            return;
        },
        bool, u16, u32, u64, i32, f32, f64 => {
            const data: [*]T = @ptrCast(@alignCast(api.duckdb_vector_get_data.?(vector)));
            data[row] = value;
            return;
        },
        else => {},
    }

    switch (@typeInfo(T)) {
        .optional => |opt| {
            // Unwrap the optional or set null.
            if (value) |v| {
                writeValue(opt.child, v, vector, row);
            } else {
                setNull(vector, row);
            }
        },
        .@"struct" => {
            // MAP
            if (@hasDecl(T, "KV")) {
                writeHashMap(value, vector, row);
                return;
            }

            // LIST
            if (@hasDecl(T, "Slice")) {
                writeArrayList(T, value, vector, row);
                return;
            }

            // STRUCT
            inline for (std.meta.fields(T)) |f| {
                if (f.name[0] == '_') {
                    continue;
                }

                const idx = duckdbFieldIndex(T, f.name);
                const child_vec = api.duckdb_struct_vector_get_child.?(vector, idx);
                writeValue(f.type, @field(value, f.name), child_vec, row);
            }
        },
        else => @compileError("unsupported type: " ++ @typeName(T)),
    }
}

fn setNull(vector: c.duckdb_vector, row: u64) void {
    api.duckdb_vector_ensure_validity_writable.?(vector);

    const validity = api.duckdb_vector_get_validity.?(vector);
    api.duckdb_validity_set_row_invalid.?(validity, row);
}

/// Writes a DuckDB MAP vector.
/// MAP is stored as LIST(STRUCT(key VARCHAR, value VARCHAR)).
fn writeHashMap(map: anytype, map_vec: c.duckdb_vector, row: u64) void {
    const keys = map.keys();
    const vals = map.values();
    const count: u64 = keys.len;
    const current_size = api.duckdb_list_vector_get_size.?(map_vec);
    const new_size = current_size + count;

    _ = api.duckdb_list_vector_reserve.?(map_vec, new_size);

    const entries: [*]c.duckdb_list_entry = @ptrCast(@alignCast(api.duckdb_vector_get_data.?(map_vec)));
    entries[row] = .{
        .offset = current_size,
        .length = count,
    };

    const child_struct = api.duckdb_list_vector_get_child.?(map_vec);
    const key_vec = api.duckdb_struct_vector_get_child.?(child_struct, 0);
    const val_vec = api.duckdb_struct_vector_get_child.?(child_struct, 1);

    for (keys, vals, 0..) |key, val, j| {
        const idx = current_size + @as(u64, @intCast(j));
        api.duckdb_vector_assign_string_element_len.?(key_vec, idx, key.ptr, key.len);
        api.duckdb_vector_assign_string_element_len.?(val_vec, idx, val.ptr, val.len);
    }

    _ = api.duckdb_list_vector_set_size.?(map_vec, new_size);
}

/// Writes a DuckDB LIST vector.
fn writeArrayList(comptime T: type, list: T, list_vec: c.duckdb_vector, row: u64) void {
    const Elem = std.meta.Child(T.Slice);
    const current_size = api.duckdb_list_vector_get_size.?(list_vec);
    const count: u64 = list.items.len;
    const new_size = current_size + count;

    _ = api.duckdb_list_vector_reserve.?(list_vec, new_size);

    const entries: [*]c.duckdb_list_entry = @ptrCast(@alignCast(api.duckdb_vector_get_data.?(list_vec)));
    entries[row] = .{
        .offset = current_size,
        .length = count,
    };

    const child_vec = api.duckdb_list_vector_get_child.?(list_vec);
    for (list.items, 0..) |item, i| {
        writeValue(Elem, item, child_vec, current_size + i);
    }

    _ = api.duckdb_list_vector_set_size.?(list_vec, new_size);
}
