# WTF is a Fake?

A test double that has a working implementation, but takes shortcuts that make it unsuitable for production. An in-memory database instead of PostgreSQL, a local file system instead of S3. Fakes actually process data, unlike stubs which just return canned answers.

```
  Production:              Testing:
  ┌──────────────┐        ┌──────────────┐
  │  PostgreSQL  │        │  In-memory   │
  │  on a server │        │  HashMap     │
  │  with disk   │        │  (same API)  │
  └──────────────┘        └──────────────┘
   real thing              fake, but works
```

**Examples:** [fake_redis](https://github.com/cunla/fakeredis-py), [SQLite in-memory](https://github.com/sqlite/sqlite), [moto (fake AWS)](https://github.com/getmoto/moto)
