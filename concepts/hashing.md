# WTF is Hashing?

Hashing is a one-way function that turns any input into a fixed-size string of characters. The same input always produces the same hash, but you can't reverse the hash back to the original input. It's used to verify data integrity and store passwords safely (you store the hash, not the password).

```
  "hello"  → SHA-256 → 2cf24dba5fb0a30e...  (always same)
  "hello!" → SHA-256 → ce06092fb948d9ff...  (totally different)

  One-way: can't go from hash → "hello"

  Password storage:
  ┌──────────┐
  │ Database │  stores hash, not password
  │ password │  2cf24dba5fb0a30e...
  └──────────┘
       │
  Login: hash(input) == stored_hash? → ✓ or ✗
```

**Examples:** [SHA-256 (Node.js crypto)](https://nodejs.org/api/crypto.html), [hashlib (Python)](https://docs.python.org/3/library/hashlib.html), [xxHash](https://github.com/Cyan4973/xxHash)
