# WTF is Write-Ahead Log?

Before changing actual data on disk, write the intended change to a sequential log file first. If the system crashes mid-operation, replay the log to recover. Every serious database uses this. The log is append-only and fast because sequential writes beat random writes.

```
  Write request
       │
       ▼
  ┌──────────┐     ┌──────────────┐
  │ Write to │────►│  WAL file    │  (sequential, fast)
  │ WAL first│     │  op1: set x=5│
  └──────────┘     │  op2: del y  │
       │           └──────────────┘
       ▼
  ┌──────────┐     Crash? Replay WAL
  │ Apply to │     to recover state
  │ data file│
  └──────────┘
```

**Examples:** [PostgreSQL WAL](https://www.postgresql.org/docs/current/wal-intro.html), [SQLite WAL](https://www.sqlite.org/wal.html), [Apache Kafka Log](https://github.com/apache/kafka)
