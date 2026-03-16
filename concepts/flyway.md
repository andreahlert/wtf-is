# WTF is Flyway?

Flyway is a database migration tool. You write numbered SQL files (V1__create_users.sql, V2__add_email.sql), and Flyway runs them in order against your database, tracking which ones have been applied. It works with most relational databases and integrates into build tools like Maven and Gradle.

```
  Project structure:
  db/migration/
  ├── V1__create_users.sql
  ├── V2__add_orders.sql
  └── V3__add_index.sql

  $ flyway migrate
  ┌────────────────────────────┐
  │ Applying V1__create_users  │ ✓
  │ Applying V2__add_orders    │ ✓
  │ Applying V3__add_index     │ ✓
  └────────────────────────────┘
  Schema version: 3
```

**Examples:** [Flyway](https://github.com/flyway/flyway), [Liquibase](https://github.com/liquibase/liquibase), [Alembic](https://github.com/sqlalchemy/alembic)
