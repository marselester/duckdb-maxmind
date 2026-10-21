const std = @import("std");
const zon = @import("build.zig.zon");

const extension_name = "maxmind";
const extension_version = "v" ++ zon.version;
const extension_api_version = "v1.2.0";

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const root_module = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("src/lib.zig"),
        .link_libc = true,
        .strip = optimize != .debug,
    });

    const duckdb_module = b.addModule("duckdb", .{
        .root_source_file = b.path("src/duckdb.zig"),
    });
    root_module.addImport("duckdb", duckdb_module);

    const mmdb = b.dependency("maxminddb", .{
        .target = target,
        .optimize = optimize,
    });
    root_module.addImport("maxminddb", mmdb.module("maxminddb"));

    const lib = b.addLibrary(.{
        .name = extension_name,
        .root_module = root_module,
        .linkage = .dynamic,
    });

    const extension_filename = b.fmt("{s}.duckdb_extension", .{extension_name});
    lib.install_name = extension_filename;

    // Add extension.c that handles DuckDB API integration.
    root_module.addCSourceFile(.{
        .file = b.path("src/extension.c"),
        .flags = &.{"-std=c11"},
    });
    root_module.addIncludePath(b.path("extension-template-c/duckdb_capi"));

    lib.root_module.addCMacro("DUCKDB_EXTENSION_NAME", extension_name);
    lib.root_module.addCMacro("DUCKDB_BUILD_LOADABLE_EXTENSION", "1");
    lib.root_module.addCMacro("EXTENSION_VERSION", b.fmt("\"{s}\"", .{extension_version}));

    // Append DuckDB extension metadata (name, version, platform, API version).
    const platform = duckdbPlatform(target);
    const add_metadata = b.addSystemCommand(&[_][]const u8{
        "python3",
        "extension-template-c/extension-ci-tools/scripts/append_extension_metadata.py",
        "-l",
    });
    add_metadata.addArtifactArg(lib);
    add_metadata.addArgs(&.{ "-n", extension_name, "-o" });
    const extension_file = add_metadata.addOutputFileArg(extension_filename);
    add_metadata.addArgs(&.{
        "-dv",
        extension_api_version,
        "-ev",
        extension_version,
        "-p",
        platform,
    });
    b.getInstallStep().dependOn(&b.addInstallLibFile(extension_file, extension_filename).step);

    const benchmarks = [_]struct {
        file: []const u8,
        name: []const u8,
    }{
        .{ .file = "benchmarks/lookup.zig", .name = "benchmark_lookup" },
        .{ .file = "benchmarks/lookup_json.zig", .name = "benchmark_lookup_json" },
    };

    for (benchmarks) |bench| {
        const bench_module = b.createModule(.{
            .target = target,
            .optimize = .ReleaseFast,
            .root_source_file = b.path(bench.file),
            .link_libc = true,
        });
        bench_module.addImport("duckdb", duckdb_module);
        bench_module.linkSystemLibrary("duckdb", .{});

        const exe = b.addExecutable(.{
            .name = bench.name,
            .root_module = bench_module,
        });

        const run_bench = b.addRunArtifact(exe);
        run_bench.step.dependOn(b.getInstallStep());
        run_bench.addPassthruArgs();

        const bench_step = b.step(bench.name, bench.file);
        bench_step.dependOn(&run_bench.step);
    }

    const duckdb_step = b.step("duckdb", "Start interactive DuckDB session");
    {
        const run_duckdb = b.addSystemCommand(&[_][]const u8{
            "duckdb",
            "-unsigned",
            "-cmd",
            b.fmt("LOAD 'zig-out/lib/{s}';", .{extension_filename}),
        });
        run_duckdb.step.dependOn(b.getInstallStep());

        duckdb_step.dependOn(&run_duckdb.step);
    }
}

fn duckdbPlatform(target: std.Build.ResolvedTarget) []const u8 {
    return switch (target.result.cpu.arch) {
        .x86_64 => switch (target.result.os.tag) {
            .linux => if (target.result.abi == .musl) "linux_amd64_musl" else "linux_amd64",
            .macos => "osx_amd64",
            .windows => "windows_amd64",
            else => "unknown",
        },
        .aarch64 => switch (target.result.os.tag) {
            .linux => if (target.result.abi == .musl) "linux_arm64_musl" else "linux_arm64",
            .macos => "osx_arm64",
            .windows => "windows_arm64",
            else => "unknown",
        },
        else => "unknown",
    };
}
