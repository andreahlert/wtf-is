# WTF is a Hash Table?

A hash table stores key-value pairs by running each key through a hash function that converts it into an array index. This gives O(1) average-time lookups, inserts, and deletes. When two keys hash to the same index (a collision), the table handles it with chaining or probing.

```
  hash("name") = 2
  hash("age")  = 5

  Array:
  ┌───┬───┬──────────┬───┬───┬────────┬───┐
  │ 0 │ 1 │ 2        │ 3 │ 4 │ 5      │ 6 │
  │   │   │name:Alex │   │   │age:30  │   │
  └───┴───┴──────────┴───┴───┴────────┴───┘

  Collision (chaining):
  slot 2 → [name:Alex] → [city:NYC] → null
```

**Examples:** [Python dict](https://github.com/python/cpython), [Java HashMap](https://github.com/openjdk/jdk), [Redis](https://github.com/redis/redis)
