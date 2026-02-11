# DuckDB MaxMind Extension

This unofficial extension allows DuckDB to read MaxMind databases (so far only GeoLite/GeoIP).

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
```

Try `.mode line` if `.mode box` truncates the output.

```sql
.mode box

select network, r.city.names.en
from read_mmdb('./GeoLite2-City.mmdb')
where r.city.names.en != ''
limit 1;

┌─────────────┬───────────┐
│   network   │    en     │
├─────────────┼───────────┤
│ 1.0.64.0/20 │ Hiroshima │
└─────────────┴───────────┘
```

You might need to update [duckdb.zig](./src/duckdb.zig)
if there are breaking changes in
[duckdb_extension.h](./extension-template-c/duckdb_capi/duckdb_extension.h).

```sh
$ zig translate-c ./extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig
```

Kudos to @habedi for making
[template-duckdb-extension-zig](https://github.com/habedi/template-duckdb-extension-zig).

## Usage

The extension should work on `macos` and `linux` running on `aarch64` (ARM64) or `x86_64`.
Here is how you can build the extension for ARM64 Linux.

```sh
$ zig build -Doptimize=ReleaseFast -Dtarget=aarch64-linux
$ duckdb -unsigned
LOAD './zig-out/lib/maxmind.duckdb_extension';
```

Alternatively, you can download the extension from the latest
[CI run](https://github.com/marselester/duckdb-maxmind/actions).
