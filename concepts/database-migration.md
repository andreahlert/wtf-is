# WTF is a Database Migration?

A database migration is a versioned script that changes your database schema (add table, rename column, add index). Migrations run in order and are tracked so the tool knows which ones have been applied. This lets every developer and environment evolve the schema in a reproducible way.

```
  Migration files (run in order):
  001_create_users.sql      ← CREATE TABLE users
  002_add_email.sql         ← ALTER TABLE users ADD email
  003_create_orders.sql     ← CREATE TABLE orders

  Tracking table:
  ┌────────────┬─────────────────┐
  │ version    │ applied_at      │
  │ 001        │ 2024-01-10      │
  │ 002        │ 2024-01-12      │  ← already applied
  │ 003        │ (pending)       │  ← run this next
  └────────────┴─────────────────┘
```

**Examples:** [Flyway](https://github.com/flyway/flyway), [Alembic](https://github.com/sqlalchemy/alembic), [golang-migrate](https://github.com/golang-migrate/migrate)
