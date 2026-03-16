# WTF is Serializable Isolation?

Serializable isolation is the strictest transaction isolation level. It guarantees that concurrent transactions produce the same result as if they ran one after another in some serial order. No dirty reads, no phantom reads, no anomalies at all. The tradeoff is lower throughput because the database must detect and abort conflicting transactions.

```
  Concurrent:                  Equivalent serial:
  TX1: read X, write Y         TX1: read X, write Y
  TX2: read Y, write X         TX2: read Y, write X
       ↕ interleaved                ↕ one at a time

  DB guarantees the result is the same as
  running TX1 then TX2 (or TX2 then TX1)

  If no valid serial order exists → one TX is aborted
```

**Examples:** [PostgreSQL SSI](https://github.com/postgres/postgres), [CockroachDB](https://github.com/cockroachdb/cockroach), [FoundationDB](https://github.com/apple/foundationdb)
