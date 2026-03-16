# WTF is Snapshot Isolation?

Snapshot isolation gives each transaction a consistent view of the database as it was when the transaction started. You never see changes made by other concurrent transactions. Two transactions can write to different rows at the same time, but if they both modify the same row, one of them gets aborted (first-committer-wins).

```
  Time ──────────────────────────────────▶

  TX1 starts (snapshot @ t=10)
  │  reads A = 100
  │                    TX2 starts (snapshot @ t=10)
  │                    │  reads A = 100
  │  writes A = 50     │  writes A = 75
  │  COMMIT ✓          │  COMMIT ✗ (conflict, retry)
  │                    │
  TX1 sees its own snapshot, never sees TX2
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [CockroachDB](https://github.com/cockroachdb/cockroach), [Oracle](https://www.oracle.com/database/)
