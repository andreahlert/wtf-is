# WTF is a Column Store?

A column store (columnar database) stores data by column instead of by row. When you query only 3 columns out of 50, it reads just those 3 from disk instead of loading entire rows. This makes analytical queries on large datasets dramatically faster and enables much better compression since similar values are stored together.

```
  Row store (reads all columns):
  ┌──────┬───────┬─────┬─────┐
  │ id   │ name  │ age │ ... │  ← full row per read
  │  1   │ Alice │  30 │ ... │
  │  2   │ Bob   │  25 │ ... │
  └──────┴───────┴─────┴─────┘

  Column store (reads only what you need):
  id:   [1, 2, 3, 4, ...]     ← skip
  name: [Alice, Bob, ...]     ← skip
  age:  [30, 25, 28, ...]     ← only read this
```

**Examples:** [ClickHouse](https://github.com/ClickHouse/ClickHouse), [DuckDB](https://github.com/duckdb/duckdb), [Apache Parquet](https://github.com/apache/parquet-format)
