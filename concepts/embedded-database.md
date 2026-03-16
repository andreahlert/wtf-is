# WTF is an Embedded Database?

An embedded database runs inside your application process, not as a separate server. There's no network communication, no separate installation, no connection strings. The database is just a library you link into your app that reads and writes directly to a local file.

```
  Client-Server DB:          Embedded DB:
  ┌─────┐  TCP  ┌────┐      ┌──────────────────┐
  │ App │──────▶│ DB │      │ App              │
  └─────┘       │srv │      │  ┌────────────┐  │
                └────┘      │  │ DB library │  │
                             │  └─────┬──────┘  │
                             └────────┼──────────┘
                                      ▼
                                  data.db (file)
```

**Examples:** [SQLite](https://github.com/sqlite/sqlite), [DuckDB](https://github.com/duckdb/duckdb), [RocksDB](https://github.com/facebook/rocksdb)
