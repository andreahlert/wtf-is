# WTF is MVCC?

MVCC (Multi-Version Concurrency Control) lets multiple transactions read and write data at the same time without blocking each other. Instead of locking rows, the database keeps multiple versions of each row. Readers see a consistent snapshot from when their transaction started, while writers create new versions.

```
  Time ──────────────────────────────▶

  TX1 (read):  sees version @ t=10
               ┌──────────────────┐
               │ row X = "old"    │
               └──────────────────┘

  TX2 (write): creates new version @ t=15
               ┌──────────────────┐
               │ row X = "new"    │
               └──────────────────┘

  TX1 still sees "old" ← no locks needed
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL/InnoDB](https://github.com/mysql/mysql-server), [CockroachDB](https://github.com/cockroachdb/cockroach)
