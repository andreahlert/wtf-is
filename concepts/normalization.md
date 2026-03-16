# WTF is Normalization?

Normalization is organizing database tables to eliminate redundant data. You split data into smaller related tables so each fact is stored exactly once. This prevents update anomalies where changing one copy of data but not the others leaves you with inconsistent information.

```
  BEFORE (denormalized):
  ┌────────┬───────┬─────────────┐
  │ order  │ user  │ user_email  │  ← email repeated
  │  101   │ Alice │ a@mail.com  │     per order
  │  102   │ Alice │ a@mail.com  │
  └────────┴───────┴─────────────┘

  AFTER (normalized):
  ┌────────┬─────────┐    ┌─────────┬─────────────┐
  │ order  │ user_id │    │ user_id │ email       │
  │  101   │    1    │───▶│    1    │ a@mail.com  │
  │  102   │    1    │───▶│         │             │
  └────────┴─────────┘    └─────────┴─────────────┘
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQLite](https://github.com/sqlite/sqlite)
