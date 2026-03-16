# WTF is a ULID?

A ULID (Universally Unique Lexicographically Sortable Identifier) is a 128-bit ID that encodes a millisecond timestamp in the first 48 bits and randomness in the remaining 80 bits. Because the timestamp comes first, ULIDs sort chronologically when compared as strings. This gives you the benefits of UUIDs without destroying B-Tree index locality.

```
  ULID: 01ARZ3NDEKTSV4RRFFQ69G5FAV
        ├─────────┤├──────────────┤
        timestamp   randomness
        (48 bits)   (80 bits)

  ULIDs sort by creation time:
  01ARZ3N... (created first)
  01ARZ3P... (created second)
  01ARZ3Q... (created third)

  UUID v4: random order in index → page splits
  ULID:    sequential in index → append-only, fast
```

**Examples:** [ulid (JS)](https://github.com/ulid/javascript), [ulid-rs](https://github.com/dylanhart/ulid-rs), [python-ulid](https://github.com/mdomke/python-ulid)
