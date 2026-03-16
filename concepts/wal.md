# WTF is WAL?

WAL (Write-Ahead Log) is a technique where changes are written to a sequential log file before they're applied to the actual data files. If the database crashes mid-write, it replays the log on startup to recover. This guarantees durability without forcing expensive random disk writes on every transaction.

```
  1. Write to WAL          2. Apply later
  ┌──────────────┐         ┌──────────────┐
  │ WAL (append) │────────▶│ Data files   │
  │ TX1: A=5     │         │ (random I/O) │
  │ TX2: B=3     │         └──────────────┘
  │ TX3: A=7     │
  └──────────────┘
        ▲
        │ sequential write = fast
        │ crash recovery = replay log
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [SQLite](https://github.com/sqlite/sqlite), [etcd](https://github.com/etcd-io/etcd)
