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
| Struct | ~1,586,000 | ~2,381,000 |
| JSON   | ~1,901,000 | ~2,732,000 |

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

Lookups Per Second: 1365479
Lookups Per Second: 1589148
Lookups Per Second: 1593742
Lookups Per Second: 1566688
Lookups Per Second: 1576086
Lookups Per Second: 1581419
Lookups Per Second: 1548927
Lookups Per Second: 1627899
Lookups Per Second: 1575486
Lookups Per Second: 1610941
---
Lookups Per Second: 2386137
Lookups Per Second: 2334267
Lookups Per Second: 2380647
Lookups Per Second: 2338713
Lookups Per Second: 2368554
Lookups Per Second: 2399424
Lookups Per Second: 2448571
Lookups Per Second: 2367247
Lookups Per Second: 2411380
Lookups Per Second: 2393152
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

Lookups Per Second: 1920708
Lookups Per Second: 1866431
Lookups Per Second: 1911372
Lookups Per Second: 1949723
Lookups Per Second: 1898885
Lookups Per Second: 1867753
Lookups Per Second: 1908925
Lookups Per Second: 1883799
Lookups Per Second: 1919288
Lookups Per Second: 1904698
---
Lookups Per Second: 2801892
Lookups Per Second: 2729099
Lookups Per Second: 2693449
Lookups Per Second: 2795137
Lookups Per Second: 2667880
Lookups Per Second: 2643309
Lookups Per Second: 2753942
Lookups Per Second: 2683198
Lookups Per Second: 2762833
Lookups Per Second: 2760678
```

</details>

### Scan

Full GeoLite2-City scan (5.5M records).

| Query                           | Time    | Decoded fields |
|---                              |---      |---             |
| `SELECT *`                      | ~13.53s | all            |
| `SELECT network, city.names.en` | ~3.39s  | city           |
| `SELECT network`                | ~0.56s  | none           |
| `SELECT count(*)`               | ~0.50s  | none           |

```sh
$ zig build duckdb -Doptimize=ReleaseFast
```

<details>

<summary>SELECT * FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT * FROM read_mmdb('GeoLite2-City.mmdb');
Run Time (s): real 13.533 user 12.537950 sys 0.873628
```

</details>

<details>

<summary>SELECT network, city.names.en FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT network, city.names.en FROM read_mmdb('GeoLite2-City.mmdb');
Run Time (s): real 3.394 user 3.311568 sys 0.064082
```

</details>

<details>

<summary>SELECT network FROM read_mmdb('GeoLite2-City.mmdb')</summary>

```sql
.timer on
SELECT network FROM read_mmdb('GeoLite2-City.mmdb');
Run Time (s): real 0.563 user 0.542995 sys 0.018816
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
Run Time (s): real 0.501 user 0.495474 sys 0.005803
```

</details>
