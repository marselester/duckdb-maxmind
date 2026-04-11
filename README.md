# DuckDB MaxMind Extension

This unofficial extension allows DuckDB to read MaxMind databases.

## Quick start

Install the extension from the
[community repository](https://duckdb.org/community_extensions/extensions/maxmind).

```sh
$ duckdb
INSTALL maxmind FROM community;
LOAD maxmind;
```

Query MMDB files using the `read_mmdb()` table function or
one of the scalar functions, e.g., `geolite_city()` or `mmdb_record()`.

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
SELECT geolite_city(
  './GeoLite2-City.mmdb', '1.0.64.0', ''
).city.names.en AS en;
┌───────────┐
│    en     │
├───────────┤
│ Hiroshima │
└───────────┘

-- Look up a record from any MMDB file.
SELECT mmdb_record(
  './GeoLite2-City.mmdb', '1.0.64.0', 'city'
)::json -> 'city' -> 'names' ->> 'en' AS en;
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

The extension should work on `macos`, `linux`, and `windows` running on `aarch64` (ARM64) or `x86_64`.
Here is how you can build the extension for ARM64 Linux glibc
(use `musl` if you use Alpine Linux, e.g., `aarch64-linux-musl`).

```sh
$ zig build -Doptimize=ReleaseFast -Dtarget=aarch64-linux-gnu
$ duckdb -unsigned
LOAD './zig-out/lib/maxmind.duckdb_extension';
```

Table function `read_mmdb(path)` scans all IP network blocks in the database.
For known GeoLite/GeoIP databases, record fields are flattened into top-level columns
such as city, country, location.
For unknown database types, records are returned as JSON in a `record` VARCHAR column.
Use the optional `network` parameter to limit the scan,
for example, `read_mmdb(path, network='1.0.0.0/8')`.
Empty records are excluded by default, use `include_empty=true` to include them.

Scalar function `mmdb_record(path, ip, fields)` works with any MMDB file
and returns the record as JSON string.
The `fields` parameter is a comma-separated list of record fields to decode.
Pass an empty string to decode all fields.

For known GeoLite/GeoIP databases, typed scalar functions return structs
with a `network` field containing the matched IP network in CIDR notation:

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
$ zig build duckdb -Doptimize=ReleaseFast
```

Run the lookup benchmark to catch regressions (1M random IPs against GeoLite2-City).

```sh
$ zig build benchmark_lookup -Doptimize=ReleaseFast
```

You might need to update [duckdb.zig](./src/duckdb.zig)
if there are breaking changes in
[duckdb_extension.h](https://github.com/duckdb/extension-template-c/blob/main/duckdb_capi/duckdb_extension.h).

```sh
$ zig translate-c ./extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig
```

Kudos to @habedi for making
[template-duckdb-extension-zig](https://github.com/habedi/template-duckdb-extension-zig).

## Benchmarks

Here are reference results on Apple M2 Pro (DuckDB calls functions from different threads).

### Lookup

1M random IPv4 lookups in GeoLite2-City.

| Type   | All fields | `"city"`   |
|---     |---         |---         |
| Struct | ~1,593,000 | ~2,182,000 |
| JSON   | ~1,876,000 | ~2,556,000 |

<details>

<summary>All fields vs filtered (struct)</summary>

```sh
$ for i in $(seq 1 10); do
    zig build benchmark_lookup -Doptimize=ReleaseFast -- GeoLite2-City.mmdb 1000000 \
      2>&1 | grep 'Lookups Per Second'
  done

  echo '---'

  for i in $(seq 1 10); do
    zig build benchmark_lookup -Doptimize=ReleaseFast -- GeoLite2-City.mmdb 1000000 city \
      2>&1 | grep 'Lookups Per Second'
  done

Lookups Per Second: 1557657
Lookups Per Second: 1601455
Lookups Per Second: 1565941
Lookups Per Second: 1621183
Lookups Per Second: 1635503
Lookups Per Second: 1581055
Lookups Per Second: 1632303
Lookups Per Second: 1597503
Lookups Per Second: 1586549
Lookups Per Second: 1547471
---
Lookups Per Second: 2222843
Lookups Per Second: 2158431
Lookups Per Second: 2185641
Lookups Per Second: 2214339
Lookups Per Second: 2142214
Lookups Per Second: 2136149
Lookups Per Second: 2222944
Lookups Per Second: 2190153
Lookups Per Second: 2173703
Lookups Per Second: 2170327
```

</details>

<details>

<summary>All fields vs filtered (JSON)</summary>

```sh
$ for i in $(seq 1 10); do
    zig build benchmark_lookup_json -Doptimize=ReleaseFast -- GeoLite2-City.mmdb 1000000 \
      2>&1 | grep 'Lookups Per Second'
  done

  echo '---'

  for i in $(seq 1 10); do
    zig build benchmark_lookup_json -Doptimize=ReleaseFast -- GeoLite2-City.mmdb 1000000 city \
      2>&1 | grep 'Lookups Per Second'
  done

Lookups Per Second: 1874756
Lookups Per Second: 1897470
Lookups Per Second: 1870679
Lookups Per Second: 1870546
Lookups Per Second: 1861258
Lookups Per Second: 1875950
Lookups Per Second: 1872761
Lookups Per Second: 1876697
Lookups Per Second: 1879974
Lookups Per Second: 1877297
---
Lookups Per Second: 2591283
Lookups Per Second: 2541957
Lookups Per Second: 2546863
Lookups Per Second: 2550550
Lookups Per Second: 2536379
Lookups Per Second: 2652563
Lookups Per Second: 2543078
Lookups Per Second: 2411626
Lookups Per Second: 2606365
Lookups Per Second: 2578813
```

</details>

### Scan

Full GeoLite2-City scan (5.5M records).

| Query                           | Time   | Decoded fields |
|---                              |---     |---             |
| `SELECT *`                      | ~9.65s | all            |
| `SELECT network, city.names.en` | ~2.84s | city           |
| `SELECT network`                | ~0.53s | none           |
| `SELECT count(*)`               | ~0.44s | none           |

```sh
$ zig build duckdb -Doptimize=ReleaseFast
```

<details>

<summary>SELECT * FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT * FROM read_mmdb('GeoLite2-City.mmdb');
Run Time (s): real 9.648 user 8.600152 sys 0.962778
```

</details>

<details>

<summary>SELECT network, city.names.en FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT network, city.names.en FROM read_mmdb('GeoLite2-City.mmdb');
Run Time (s): real 2.844 user 2.815992 sys 0.026339
```

</details>

<details>

<summary>SELECT network FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT network FROM read_mmdb('GeoLite2-City.mmdb');
Run Time (s): real 0.526 user 0.494845 sys 0.029498
```

</details>

<details>

<summary>SELECT count(*) FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT count(*) FROM read_mmdb('GeoLite2-City.mmdb');
┌────────────────┐
│  count_star()  │
│     int64      │
├────────────────┤
│    5502351     │
│ (5.50 million) │
└────────────────┘
Run Time (s): real 0.441 user 0.436056 sys 0.005379
```

</details>
