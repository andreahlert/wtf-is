# WTF is Eventual Consistency?

A guarantee that if you stop writing data, all replicas will eventually have the same data. Not instantly, eventually. You might read stale data for a moment after a write, but it will catch up. Most distributed systems use this because requiring instant consistency across all nodes is slow and fragile.

```
Write to node A:    "name = Alice"
                         │
Read from node B:   "name = Bob"    ← stale (hasn't synced yet)
                         │
    ... milliseconds pass ...
                         │
Read from node B:   "name = Alice"  ← caught up
```

**Examples:** DNS, DynamoDB (default mode), Cassandra, S3
