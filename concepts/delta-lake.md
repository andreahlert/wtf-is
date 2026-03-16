# WTF is Delta Lake?

Delta Lake is an open-source storage layer that adds ACID transactions, schema enforcement, and time travel to data lakes. It stores data as Parquet files plus a transaction log that tracks every change. You can query data as it was at any point in time and roll back bad writes.

```
  Regular Parquet files:        Delta Lake:
  ┌──────────────┐              ┌──────────────┐
  │ data/*.parquet│              │ data/*.parquet│
  │ No transactions│             │ _delta_log/  │
  │ No versioning │              │  00001.json  │ ← transaction log
  │ Schema? maybe │              │  00002.json  │
  └──────────────┘              └──────────────┘

  Time travel: SELECT * FROM table VERSION AS OF 5
  ACID: concurrent writes don't corrupt data
```

**Examples:** [Delta Lake](https://github.com/delta-io/delta), [delta-rs](https://github.com/delta-io/delta-rs), [Databricks](https://www.databricks.com/)
