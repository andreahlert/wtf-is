# WTF is LRU Cache?

A cache that evicts the least recently used item when it's full. Every time you access an item, it moves to the front. When space runs out, the item at the back (oldest access) gets dropped. Simple, effective, and the most common cache eviction policy.

```
  Capacity: 4

  Access A, B, C, D:  [D, C, B, A]
  Access B:           [B, D, C, A]  (B moves to front)
  Access E (full!):   [E, B, D, C]  (A evicted, least recent)

  ┌───┬───┬───┬───┐
  │ E │ B │ D │ C │  ← A was dropped
  └───┴───┴───┴───┘
  MRU              LRU
```

**Examples:** [lru-cache (npm)](https://github.com/isaacs/node-lru-cache), [cachetools (Python)](https://github.com/tkem/cachetools), [Caffeine (Java)](https://github.com/ben-manes/caffeine)
