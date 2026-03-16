# WTF is a Database View?

A view is a saved SQL query that acts like a virtual table. You query it like a regular table, but it doesn't store data. Every time you read from it, the database runs the underlying query. Materialized views are the exception: they cache the results and refresh periodically.

```
  CREATE VIEW active_users AS
  SELECT name, email FROM users
  WHERE status = 'active' AND last_login > NOW() - '30 days';

  -- Use it like a table:
  SELECT * FROM active_users WHERE name LIKE 'A%';

  Regular view:       Materialized view:
  ┌──────────┐        ┌──────────────┐
  │ No data  │        │ Cached data  │
  │ Runs SQL │        │ Refreshed    │
  │ on read  │        │ periodically │
  └──────────┘        └──────────────┘
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [DuckDB](https://github.com/duckdb/duckdb)
