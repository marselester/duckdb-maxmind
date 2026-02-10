const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const extension_name = "maxmind";
    const extension_filename = b.fmt("{s}.duckdb_extension", .{extension_name});
    const extension_version = "v0.0.0";
    const extension_api_version = "v1.2.0";
    const platform = b.option(
        []const u8,
        "platform",
        "Target platform, e.g., linux_amd64, linux_arm64",
    ) orelse detectPlatform(target);

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

    {
        const lib = b.addLibrary(.{
            .name = extension_name,
            .root_module = root_module,
            .linkage = .dynamic,
        });

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

        // Allow undefined symbols.
        // They will be provided by DuckDB at runtime.
        lib.linker_allow_shlib_undefined = true;

        // Install the library artifact.
        const lib_install = b.addInstallArtifact(lib, .{});
        b.getInstallStep().dependOn(&lib_install.step);
    }

    // Detect the library file extension based on target OS.
    // Windows DLLs go to bin, other platforms go to lib.
    const lib_filename = libFilename(b, target, extension_name);
    const lib_path = if (target.result.os.tag == .windows)
        b.getInstallPath(.bin, lib_filename)
    else
        b.getInstallPath(.lib, lib_filename);

    // Add DuckDB extension metadata for proper loading (name, version, platform, API version).
    const metadata_step = b.step("metadata", "Add DuckDB extension metadata");
    {
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
        add_metadata.step.dependOn(b.getInstallStep());

        metadata_step.dependOn(&add_metadata.step);
    }

    const duckdb_step = b.step("duckdb", "Start interactive DuckDB session");
    {
        const run_duckdb = b.addSystemCommand(&[_][]const u8{
            "duckdb",
            "-unsigned",
            "-cmd",
            b.fmt("LOAD 'zig-out/lib/{s}';", .{extension_filename}),
        });
        run_duckdb.step.dependOn(metadata_step);

        duckdb_step.dependOn(&run_duckdb.step);
    }
}

fn detectPlatform(target: std.Build.ResolvedTarget) []const u8 {
    return switch (target.result.cpu.arch) {
        .x86_64 => switch (target.result.os.tag) {
            .linux => "linux_amd64",
            .macos => "osx_amd64",
            .windows => "windows_amd64",
            else => "unknown",
        },
        .aarch64 => switch (target.result.os.tag) {
            .linux => "linux_arm64",
            .macos => "osx_arm64",
            .windows => "windows_arm64",
            else => "unknown",
        },
        else => "unknown",
    };
}

fn libFilename(b: *std.Build, target: std.Build.ResolvedTarget, name: []const u8) []const u8 {
    return switch (target.result.os.tag) {
        .windows => b.fmt("{s}.dll", .{name}),
        .macos => b.fmt("lib{s}.dylib", .{name}),
        else => b.fmt("lib{s}.so", .{name}),
    };
}
