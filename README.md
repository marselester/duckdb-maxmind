# DuckDB MaxMind Extension

This unofficial extension allows DuckDB to read MaxMind databases.

⚠️ Note, this extension is a proof of concept.

## Quick start

Clone [duckdb-maxmind](https://github.com/marselester/duckdb-maxmind.git) repository
and update [extension-template-c](./extension-template-c) submodule
that provides DuckDB C Extension API.

```sh
$ git clone https://github.com/marselester/duckdb-maxmind.git
$ cd ./duckdb-maxmind/
$ git submodule update --init --recursive
```

Make sure the extension works by running DuckDB interactive session.

```sh
$ brew install duckdb
$ zig build duckdb

select row.name from read_mmdb('./GeoLite2-City.mmdb') limit 10;
```

You might need to update [duckdb.zig](./src/duckdb.zig)
if there are breaking changes in
[duckdb_extension.h](./extension-template-c/duckdb_capi/duckdb_extension.h).

```sh
$ zig translate-c ./extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig
```

Kudos to @habedi for making
[template-duckdb-extension-zig](https://github.com/habedi/template-duckdb-extension-zig).
