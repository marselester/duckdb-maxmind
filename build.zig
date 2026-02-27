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
    lib.addCSourceFile(.{
        .file = b.path("src/extension.c"),
        .flags = &.{"-std=c11"},
    });
    lib.addIncludePath(b.path("extension-template-c/duckdb_capi"));

    lib.root_module.addCMacro("DUCKDB_EXTENSION_NAME", extension_name);
    lib.root_module.addCMacro("DUCKDB_BUILD_LOADABLE_EXTENSION", "1");
    lib.root_module.addCMacro("EXTENSION_VERSION", b.fmt("\"{s}\"", .{extension_version}));

    const lib_install = b.addInstallArtifact(lib, .{});

    // Detect the library file extension based on target OS.
    // Windows DLLs go to bin, other platforms go to lib.
    const lib_filename = duckdbLibFilename(b, target, extension_name);
    const lib_path = if (target.result.os.tag == .windows)
        b.getInstallPath(.bin, lib_filename)
    else
        b.getInstallPath(.lib, lib_filename);

    // Append DuckDB extension metadata (name, version, platform, API version).
    const platform = duckdbPlatform(target);
    const add_metadata = b.addSystemCommand(&[_][]const u8{
        "python3",
        "extension-template-c/extension-ci-tools/scripts/append_extension_metadata.py",
        "-l",
        lib_path,
        "-n",
        extension_name,
        "-o",
        b.getInstallPath(.lib, extension_filename),
        "-dv",
        extension_api_version,
        "-ev",
        extension_version,
        "-p",
        platform,
    });
    add_metadata.step.dependOn(&lib_install.step);
    b.getInstallStep().dependOn(&add_metadata.step);

    {
        const tests = b.addTest(.{
            .root_module = b.createModule(.{
                .target = target,
                .optimize = optimize,
                .root_source_file = b.path("src/filter.zig"),
            }),
        });

        const run_tests = b.addRunArtifact(tests);
        const test_step = b.step("test", "Run unit tests");
        test_step.dependOn(&run_tests.step);
    }

    const benchmark_step = b.step("benchmark_lookup", "Run lookup benchmark");
    {
        const bench_module = b.createModule(.{
            .target = target,
            .optimize = .ReleaseFast,
            .root_source_file = b.path("benchmarks/lookup.zig"),
            .link_libc = true,
        });
        bench_module.linkSystemLibrary("duckdb", .{});

        const bench = b.addExecutable(.{
            .name = "benchmark",
            .root_module = bench_module,
        });

        const run_bench = b.addRunArtifact(bench);
        run_bench.step.dependOn(b.getInstallStep());
        if (b.args) |args| {
            run_bench.addArgs(args);
        }

        benchmark_step.dependOn(&run_bench.step);
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

fn duckdbLibFilename(b: *std.Build, target: std.Build.ResolvedTarget, name: []const u8) []const u8 {
    return switch (target.result.os.tag) {
        .windows => b.fmt("{s}.dll", .{name}),
        .macos => b.fmt("lib{s}.dylib", .{name}),
        else => b.fmt("lib{s}.so", .{name}),
    };
}
