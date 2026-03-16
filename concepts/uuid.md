# WTF is a UUID?

A UUID (Universally Unique Identifier) is a 128-bit identifier that can be generated independently on any machine with virtually no risk of collision. No central authority or coordination needed. The tradeoff is that UUIDs are large (36 characters), not sortable by creation time (except UUIDv7), and fragment B-Tree indexes.

```
  Format: 550e8400-e29b-41d4-a716-446655440000
          ├──────┤ ├──┤ ├──┤ ├──┤ ├──────────┤
          time-low  mid  hi   seq   node

  Versions:
  v4: fully random (most common)
  v7: timestamp + random (sortable, new standard)

  Auto-increment: 1, 2, 3          ← predictable, no distributed gen
  UUID v4: f47ac10b-58cc...         ← random, any node can generate
```

**Examples:** [uuid (npm)](https://github.com/uuidjs/uuid), [Python uuid](https://github.com/python/cpython), [pgcrypto](https://github.com/postgres/postgres)
