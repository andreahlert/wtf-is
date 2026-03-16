# WTF is an In-Memory Database?

An in-memory database stores all data in RAM instead of on disk. Since RAM access is ~100x faster than SSD, reads and writes are extremely fast. Most in-memory databases still persist data to disk in the background for durability, but all operations happen against the in-memory copy.

```
  Traditional DB:            In-Memory DB:
  ┌─────┐    ┌──────┐       ┌─────┐    ┌─────┐
  │ App │───▶│ Disk │       │ App │───▶│ RAM │
  └─────┘    └──────┘       └─────┘    └──┬──┘
  ~100μs per read                ~1μs     │
                                    async │ persist
                                     ┌────▼───┐
                                     │  Disk  │
                                     └────────┘
```

**Examples:** [Redis](https://github.com/redis/redis), [Memcached](https://github.com/memcached/memcached), [VoltDB](https://github.com/VoltDB/voltdb)
