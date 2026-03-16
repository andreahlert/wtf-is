# WTF is Sharding?

Splitting your database into smaller pieces (shards) that each hold a subset of the data. Instead of one giant database handling everything, you spread the load across multiple databases. Each shard holds rows for specific users, regions, or key ranges. Reads and writes go to the right shard based on a shard key.

```
One database (no sharding):
  ┌───────────────────────────┐
  │  All 100M users           │  ← slow, single point of failure
  └───────────────────────────┘

Sharded by user_id:
  ┌─────────┐ ┌─────────┐ ┌─────────┐
  │ Shard 1 │ │ Shard 2 │ │ Shard 3 │
  │ A-H     │ │ I-P     │ │ Q-Z     │
  └─────────┘ └─────────┘ └─────────┘

  Query for user "Alice" → shard key = "A" → goes to Shard 1
```

**Examples:** [MongoDB](https://github.com/mongodb/mongo) (auto-sharding), [Vitess](https://github.com/vitessio/vitess) (MySQL sharding), [CockroachDB](https://github.com/cockroachdb/cockroach), [Cassandra](https://github.com/apache/cassandra)
