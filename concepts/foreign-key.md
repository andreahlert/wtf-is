# WTF is a Foreign Key?

A foreign key is a column that references the primary key of another table, enforcing that the relationship is valid. If you try to insert an order for a user that doesn't exist, or delete a user that still has orders, the database rejects it. This keeps your data consistent at the database level.

```
  ┌──────────────┐         ┌──────────────┐
  │ users        │         │ orders       │
  │──────────────│         │──────────────│
  │ id (PK)     │◄────────│ user_id (FK) │
  │ name        │         │ total        │
  └──────────────┘         └──────────────┘

  INSERT INTO orders (user_id, total) VALUES (999, 50);
  → ERROR: user 999 does not exist

  DELETE FROM users WHERE id = 1;
  → ERROR: orders still reference user 1
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQLite](https://github.com/sqlite/sqlite)
