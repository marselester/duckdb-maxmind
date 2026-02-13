# DuckDB MaxMind Extension

This unofficial extension allows DuckDB to read MaxMind databases (so far only GeoLite/GeoIP).

⚠️ Note, this extension is a proof of concept.

## Quick start

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

Try `.mode line` if `.mode box` truncates the output.

```sql
.mode box

-- Sequential scan over blocks of IP networks.
SELECT network, r.city.names.en
FROM read_mmdb('./GeoLite2-City.mmdb')
WHERE r.city.names.en != ''
LIMIT 1;

┌─────────────┬───────────┐
│   network   │    en     │
├─────────────┼───────────┤
│ 1.0.64.0/20 │ Hiroshima │
└─────────────┴───────────┘

-- Look up a record by an IP address.
SELECT geolite_city('./GeoLite2-City.mmdb', '1.0.64.0').city.names.en;
┌────────────────────────────────────────────────────────────────────────┐
│ (((geolite_city('./GeoLite2-City.mmdb', '1.0.64.0')).city)."names").en │
├────────────────────────────────────────────────────────────────────────┤
│ Hiroshima                                                              │
└────────────────────────────────────────────────────────────────────────┘
```

You might need to update [duckdb.zig](./src/duckdb.zig)
if there are breaking changes in
[duckdb_extension.h](https://github.com/duckdb/extension-template-c/blob/main/duckdb_capi/duckdb_extension.h).

```sh
$ zig translate-c ./extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig
```

Kudos to @habedi for making
[template-duckdb-extension-zig](https://github.com/habedi/template-duckdb-extension-zig).

## Usage

The extension should work on `macos` and `linux` running on `aarch64` (ARM64) or `x86_64`.
Here is how you can build the extension for ARM64 Linux glibc
(use `musl` if you use Alpine Linux).

```sh
$ zig build -Doptimize=ReleaseFast -Dtarget=aarch64-linux-gnu
$ duckdb -unsigned
LOAD './zig-out/lib/maxmind.duckdb_extension';
```

Alternatively, you can download the extension from the latest
[CI run](https://github.com/marselester/duckdb-maxmind/actions).

Table functions:

- `read_mmdb(path)`

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
