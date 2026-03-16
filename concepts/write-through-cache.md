# WTF is Write-Through Cache?

Every write goes to the cache AND the database at the same time. The cache is always consistent with the database. Reads are fast (always a cache hit for recently written data), but writes are slower since you wait for both the cache and DB to confirm.

```
  App              Cache           Database
   │── write ──────►│               │
   │                │── write ─────►│
   │                │◄── ok ───────│
   │◄── ok ────────│               │
   │                                │
   │── read ───────►│               │
   │◄── hit ───────│  (always fresh)│
```

**Examples:** [DynamoDB DAX](https://aws.amazon.com/dynamodb/dax/), [NCache](https://github.com/Alachisoft/NCache), [Hazelcast](https://github.com/hazelcast/hazelcast)
