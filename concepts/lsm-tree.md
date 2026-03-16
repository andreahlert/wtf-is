# WTF is an LSM Tree?

An LSM Tree (Log-Structured Merge Tree) is a data structure optimized for high write throughput. Writes go to an in-memory buffer first, then get flushed to sorted files on disk in the background. Reads may need to check multiple files and merge results, making them slower than B-Trees, but writes are dramatically faster.

```
  Write path:
  ┌──────────┐  flush   ┌──────────┐  compact  ┌──────────┐
  │ MemTable │────────▶ │ Level 0  │─────────▶ │ Level 1  │
  │ (RAM)    │          │ (SSTable)│           │ (merged) │
  └──────────┘          └──────────┘           └──────────┘

  Read path:
  MemTable ──▶ L0 ──▶ L1 ──▶ L2 ──▶ ... (check each level)
```

**Examples:** [RocksDB](https://github.com/facebook/rocksdb), [LevelDB](https://github.com/google/leveldb), [Cassandra](https://github.com/apache/cassandra)
