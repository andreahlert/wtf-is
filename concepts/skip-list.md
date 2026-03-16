# WTF is a Skip List?

A skip list is a sorted linked list with multiple layers of "express lanes" that let you skip over large chunks of data. The bottom layer has all elements, and each higher layer has fewer, randomly chosen elements. Lookups are O(log N) on average, like a balanced tree, but the implementation is much simpler.

```
  Level 3:  HEAD ─────────────────────────▶ 50 ──▶ NIL
  Level 2:  HEAD ──────▶ 20 ──────────────▶ 50 ──▶ NIL
  Level 1:  HEAD ──▶ 10 ▶ 20 ──▶ 35 ─────▶ 50 ──▶ NIL
  Level 0:  HEAD ▶ 5▶10▶ 20 ▶ 25▶ 35 ▶ 40▶ 50 ──▶ NIL

  Search for 35: start at top, skip right, drop down
```

**Examples:** [Redis Sorted Sets](https://github.com/redis/redis), [LevelDB](https://github.com/google/leveldb), [RocksDB](https://github.com/facebook/rocksdb)
