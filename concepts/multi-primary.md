# WTF is Multi-Primary Replication?

Multi-primary (or multi-master) replication lets multiple nodes accept writes and sync changes between them. This improves write availability and lets users write to the nearest node. The tradeoff is that two nodes might modify the same data at the same time, creating conflicts that need resolution.

```
  ┌──────────┐  write   ┌──────────┐
  │ App (US) │─────────▶│Primary 1 │
  └──────────┘          └────┬─────┘
                             │ bidirectional
                             │ replication
  ┌──────────┐  write   ┌────▼─────┐
  │ App (EU) │─────────▶│Primary 2 │
  └──────────┘          └──────────┘

  Conflict: both update same row → need resolution strategy
```

**Examples:** [CockroachDB](https://github.com/cockroachdb/cockroach), [MySQL Group Replication](https://github.com/mysql/mysql-server), [Cassandra](https://github.com/apache/cassandra)
