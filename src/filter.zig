const std = @import("std");

pub fn Fields(comptime capacity: usize) type {
    return struct {
        items: [capacity][]const u8 = undefined,
        len: usize = 0,

        const Self = @This();

        // Parses a string into field names.
        pub fn parse(str: []const u8, sep: u8) Self {
            var f: Self = .{};

            var it = std.mem.splitScalar(u8, str, sep);
            while (it.next()) |part| {
                const name = std.mem.trim(u8, part, " ");
                if (name.len == 0) continue;
                if (f.len >= capacity) break;
                f.append(name);
            }

            return f;
        }

        pub fn append(self: *Self, name: []const u8) void {
            self.items[self.len] = name;
            self.len += 1;
        }

        // Returns field names where empty input means "decode all fields", e.g.,
        // the user didn't specify fields, so we want everything.
        pub fn only(self: *const Self) ?[]const []const u8 {
            return if (self.len > 0) self.items[0..self.len] else null;
        }

        // Returns field names where empty input means "decode nothing".
        // This is used for engine-determined projection in read_mmdb() table function:
        // no record fields are projected, so we skip record decoding entirely.
        pub fn slice(self: *const Self) []const []const u8 {
            return self.items[0..self.len];
        }
    };
}

test "parse" {
    const tests = [_]struct {
        input: []const u8,
        want: ?[]const []const u8,
    }{
        .{ .input = "city, country, postal", .want = &.{ "city", "country", "postal" } },
        .{ .input = "  city ,  country  ", .want = &.{ "city", "country" } },
        .{ .input = ",city,,country,", .want = &.{ "city", "country" } },
        .{ .input = "", .want = null },
    };

    for (tests) |tc| {
        const f = Fields(4).parse(tc.input, ',');
        const got = f.only();

        if (tc.want) |want| {
            try std.testing.expectEqual(want.len, got.?.len);
            for (want, got.?) |w, g| {
                try std.testing.expectEqualStrings(w, g);
            }
        } else {
            try std.testing.expectEqual(null, got);
        }
    }
}

test "parse stops at capacity" {
    const f = Fields(2).parse("a,b,c,d", ',');
    const s = f.slice();

    try std.testing.expectEqual(2, s.len);
    try std.testing.expectEqualStrings("a", s[0]);
    try std.testing.expectEqualStrings("b", s[1]);
}

test "append and slice" {
    var f: Fields(3) = .{};
    f.append("city");
    f.append("country");
    const s = f.slice();

    try std.testing.expectEqual(2, s.len);
    try std.testing.expectEqualStrings("city", s[0]);
    try std.testing.expectEqualStrings("country", s[1]);
}

test "slice returns empty when no fields" {
    const f: Fields(3) = .{};
    try std.testing.expectEqual(0, f.slice().len);
}

test "only returns null when empty" {
    const f: Fields(3) = .{};
    try std.testing.expectEqual(null, f.only());
}
