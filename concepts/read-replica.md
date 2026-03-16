# WTF is Read Replica?

A copy of your database that handles read queries while the primary handles writes. Writes go to the primary and get replicated (usually asynchronously) to the replicas. Spreads read load across multiple servers. The tradeoff: replicas might be slightly behind.

```
  App
  ├── writes ──► ┌──────────┐
  │              │ Primary  │
  │              │ (read +  │
  │              │  write)  │
  │              └────┬─────┘
  │              replication
  │              ┌────▼─────┐
  └── reads ───► │ Replica  │  (might be ms behind)
                 └──────────┘
```

**Examples:** [Amazon RDS Read Replicas](https://aws.amazon.com/rds/features/read-replicas/), [PostgreSQL Streaming Replication](https://www.postgresql.org/docs/current/warm-standby.html), [MySQL Replication](https://dev.mysql.com/doc/refman/en/replication.html)
