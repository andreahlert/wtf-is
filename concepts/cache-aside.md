# WTF is Cache-Aside Pattern?

The app checks the cache first. Cache miss? Load from the database, store it in cache, then return. The app controls all cache logic. The cache and database don't talk to each other. Most common caching strategy because it's simple and the app decides what to cache.

```
  App              Cache           Database
   │── get(key) ───►│               │
   │◄── miss ───────│               │
   │                                │
   │── query(key) ─────────────────►│
   │◄── data ──────────────────────│
   │                                │
   │── set(key, data) ►│           │
   │◄── ok ────────────│           │
```

**Examples:** [Redis](https://github.com/redis/redis), [Memcached](https://github.com/memcached/memcached), [Caffeine](https://github.com/ben-manes/caffeine)
