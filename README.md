# DuckDB MaxMind Extension

This unofficial extension allows DuckDB to read MaxMind databases (so far only GeoLite/GeoIP).

## Quick start

Install an unsigned extension from a custom repository for convenience.

```sh
$ duckdb -unsigned
INSTALL maxmind FROM 'https://marselester.com/duckdb-maxmind';
LOAD maxmind;
```

Query MMDB files using `read_mmdb()` table function or
one of the scalar functions, e.g., `geolite_city()`.

```sql
-- Try ".mode line" if you want an untruncated output.
.mode box

-- Sequential scan over blocks of IP networks.
-- Record fields are flattened into top-level columns (e.g., city, country, location).
SELECT network, city.names.en
FROM read_mmdb('./GeoLite2-City.mmdb')
WHERE city.names.en IS NOT NULL
LIMIT 1;

┌─────────────┬───────────┐
│   network   │    en     │
├─────────────┼───────────┤
│ 1.0.64.0/20 │ Hiroshima │
└─────────────┴───────────┘

-- Look up a record by an IP address.
SELECT geolite_city('./GeoLite2-City.mmdb', '1.0.64.0').city.names.en AS en;
┌───────────┐
│    en     │
├───────────┤
│ Hiroshima │
└───────────┘
```

## Usage

Install an unsigned extension from a custom repository
or download it from a [CI run](https://github.com/marselester/duckdb-maxmind/actions).
Note, you can find the download links at
[Releases](https://github.com/marselester/duckdb-maxmind/releases) page as well.

```sh
$ duckdb -unsigned
INSTALL maxmind FROM 'https://marselester.com/duckdb-maxmind';
LOAD maxmind;
```

The extension should work on `macos` and `linux` running on `aarch64` (ARM64) or `x86_64`.
Here is how you can build the extension for ARM64 Linux glibc
(use `musl` if you use Alpine Linux, e.g., `aarch64-linux-musl`).

```sh
$ zig build -Doptimize=ReleaseFast -Dtarget=aarch64-linux-gnu
$ duckdb -unsigned
LOAD './zig-out/lib/maxmind.duckdb_extension';
```

Table functions:

- `read_mmdb(path)` also supports optional `network`, e.g., `read_mmdb(path, network='1.0.0.0/8')`.
  By default it would use `0.0.0.0` or `::` depending on IP version set in db metadata.

Scalar functions:

- `geolite_city(path, ip)`
- `geolite_country(path, ip)`
- `geolite_asn(path, ip)`
- `geoip_city(path, ip)`
- `geoip_country(path, ip)`
- `geoip_enterprise(path, ip)`
- `geoip_isp(path, ip)`
- `geoip_connection_type(path, ip)`
- `geoip_anonymous_ip(path, ip)`
- `geoip_anonymous_plus(path, ip)`
- `geoip_ip_risk(path, ip)`
- `geoip_densityincome(path, ip)`
- `geoip_domain(path, ip)`
- `geoip_static_ip_score(path, ip)`
- `geoip_user_count(path, ip)`

## Development

Clone [duckdb-maxmind](https://github.com/marselester/duckdb-maxmind.git) repository
and update [extension-template-c](https://github.com/duckdb/extension-template-c) submodule
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

You might need to update [duckdb.zig](./src/duckdb.zig)
if there are breaking changes in
[duckdb_extension.h](https://github.com/duckdb/extension-template-c/blob/main/duckdb_capi/duckdb_extension.h).

```sh
$ zig translate-c ./extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig
```

Kudos to @habedi for making
[template-duckdb-extension-zig](https://github.com/habedi/template-duckdb-extension-zig).
