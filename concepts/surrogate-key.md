# WTF is a Surrogate Key?

A surrogate key is an artificial identifier (like an auto-increment integer or UUID) that has no business meaning. It exists purely to uniquely identify a row. Unlike natural keys, surrogate keys never change because they're not tied to real-world data that might be updated.

```
  Natural key:              Surrogate key:
  ┌───────────────────┐     ┌────┬───────────────────┐
  │ email (PK)        │     │ id │ email             │
  │ alice@old.com     │     │  1 │ alice@old.com     │
  └───────────────────┘     └────┴───────────────────┘
       │                         │
  Email changes? Update PK      Email changes? Update column
  + all foreign keys (pain)     ID stays 1 (no FK changes)
```

**Examples:** [PostgreSQL SERIAL](https://github.com/postgres/postgres), [MySQL AUTO_INCREMENT](https://github.com/mysql/mysql-server), [Prisma](https://github.com/prisma/prisma)
