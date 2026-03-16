# WTF is Write-Behind Cache?

Write to the cache and return immediately. The cache asynchronously flushes changes to the database later. Writes feel instant because you're not waiting for the DB. The risk: if the cache crashes before flushing, you lose data. Also called "write-back."

```
  App              Cache           Database
   │── write ──────►│               │
   │◄── ok ────────│  (instant!)    │
   │                │               │
   │                │  (later...)   │
   │                │── flush ─────►│
   │                │◄── ok ───────│
   │                                │
   Fast writes, but risk of data
   loss if cache crashes before flush
```

**Examples:** [Hazelcast](https://github.com/hazelcast/hazelcast), [NCache](https://github.com/Alachisoft/NCache), [Ehcache](https://github.com/ehcache/ehcache3)
