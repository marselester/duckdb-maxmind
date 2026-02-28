# DuckDB MaxMind Extension

This unofficial extension allows DuckDB to read MaxMind databases (so far only GeoLite/GeoIP).

## Quick start

Install the extension from the
[community repository](https://duckdb.org/community_extensions/extensions/maxmind).

```sh
$ duckdb
INSTALL maxmind FROM community;
LOAD maxmind;
```

Query MMDB files using the `read_mmdb()` table function or
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
-- Pass an empty string as the third parameter to decode all fields.
SELECT geolite_city('./GeoLite2-City.mmdb', '1.0.64.0', '').city.names.en AS en;
┌───────────┐
│    en     │
├───────────┤
│ Hiroshima │
└───────────┘
```

## Usage

An unsigned extension can be installed from a custom repository
or downloaded from a [CI run](https://github.com/marselester/duckdb-maxmind/actions).
Note, you can find the download links at
the [Releases](https://github.com/marselester/duckdb-maxmind/releases) page as well.

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

Table function `read_mmdb(path)` scans all IP network blocks in the database.
Record fields are flattened into top-level columns such as city, country, location.
Use the optional `network` parameter to limit the scan,
for example, `read_mmdb(path, network='1.0.0.0/8')`.

Scalar functions take three parameters: `path`, `ip`, and `fields`.
The `fields` parameter is a comma-separated list of record fields to decode.
Pass an empty string to decode all fields.

- `geolite_city(path, ip, fields)`
- `geolite_country(path, ip, fields)`
- `geolite_asn(path, ip, fields)`
- `geoip_city(path, ip, fields)`
- `geoip_country(path, ip, fields)`
- `geoip_enterprise(path, ip, fields)`
- `geoip_isp(path, ip, fields)`
- `geoip_connection_type(path, ip, fields)`
- `geoip_anonymous_ip(path, ip, fields)`
- `geoip_anonymous_plus(path, ip, fields)`
- `geoip_ip_risk(path, ip, fields)`
- `geoip_densityincome(path, ip, fields)`
- `geoip_domain(path, ip, fields)`
- `geoip_static_ip_score(path, ip, fields)`
- `geoip_user_count(path, ip, fields)`

## Development

Clone [duckdb-maxmind](https://github.com/marselester/duckdb-maxmind.git) repository
and update [extension-template-c](https://github.com/duckdb/extension-template-c) submodule
that provides DuckDB C Extension API.

```sh
$ git clone https://github.com/marselester/duckdb-maxmind.git
$ cd ./duckdb-maxmind/
$ git submodule update --init --recursive
```

Make sure the extension works by running a DuckDB interactive session.

```sh
$ brew install duckdb
$ zig build duckdb
```

Run the lookup benchmark to catch regressions (1M random IPs against GeoLite2-City).

```sh
$ zig build benchmark_lookup
```

Here are reference results on Apple M2 Pro.

<details>

<summary>All fields vs filtered</summary>

```sh
$ for i in $(seq 1 10); do
    zig build benchmark_lookup -- GeoLite2-City.mmdb 1000000 \
      2>&1 | grep 'Lookups Per Second'
  done

  echo '---'

  for i in $(seq 1 10); do
    zig build benchmark_lookup -- GeoLite2-City.mmdb 1000000 city \
      2>&1 | grep 'Lookups Per Second'
  done

Lookups Per Second: 497955
Lookups Per Second: 593995
Lookups Per Second: 590774
Lookups Per Second: 587747
Lookups Per Second: 590649
Lookups Per Second: 574647
Lookups Per Second: 586559
Lookups Per Second: 595166
Lookups Per Second: 513376
Lookups Per Second: 592375
---
Lookups Per Second: 835650
Lookups Per Second: 826393
Lookups Per Second: 791974
Lookups Per Second: 799695
Lookups Per Second: 837284
Lookups Per Second: 819740
Lookups Per Second: 816168
Lookups Per Second: 759350
Lookups Per Second: 834254
Lookups Per Second: 832943
```

</details>

<details>

<summary>SELECT * FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
D SELECT * FROM read_mmdb('GeoLite2-City.mmdb');
100% ▕██████████████████████████████████████▏ (00:00:09.63 elapsed)
```

</details>

<details>

<summary>SELECT count(*) FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
D SELECT count(*) FROM read_mmdb('GeoLite2-City.mmdb');
100% ▕██████████████████████████████████████▏ (00:00:02.39 elapsed)
┌────────────────┐
│  count_star()  │
│     int64      │
├────────────────┤
│    5502351     │
│ (5.50 million) │
└────────────────┘
```

</details>

You might need to update [duckdb.zig](./src/duckdb.zig)
if there are breaking changes in
[duckdb_extension.h](https://github.com/duckdb/extension-template-c/blob/main/duckdb_capi/duckdb_extension.h).

```sh
$ zig translate-c ./extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig
```

Kudos to @habedi for making
[template-duckdb-extension-zig](https://github.com/habedi/template-duckdb-extension-zig).
