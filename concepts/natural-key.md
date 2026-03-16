# WTF is a Natural Key?

A natural key is a primary key made from real-world data that already uniquely identifies the row, like an email address, SSN, or ISBN. No artificial ID needed. The risk is that real-world data can change (people change emails) or turn out to not be as unique as you thought.

```
  Natural key:                     Surrogate key:
  ┌─────────────────────────┐      ┌────┬──────────────┐
  │ isbn (PK)               │      │ id │ isbn         │
  │ 978-0-13-468599-1       │      │  1 │ 978-0-13-..  │
  └─────────────────────────┘      └────┴──────────────┘

  Good natural key: ISBN (never changes, truly unique)
  Bad natural key:  email (people change them)
  Bad natural key:  SSN (reused, not everyone has one)
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQLite](https://github.com/sqlite/sqlite)
