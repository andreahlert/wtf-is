# WTF is a Query Builder?

A query builder lets you construct SQL queries programmatically using method chaining instead of concatenating raw strings. It's a middle ground between raw SQL and a full ORM: you still think in terms of tables and columns, but the builder handles escaping, parameterization, and dialect differences.

```
  Raw SQL (dangerous):
  "SELECT * FROM users WHERE name = '" + input + "'"

  Query Builder (safe):
  db.select("users")
    .where("name", "=", input)    ← parameterized
    .orderBy("created_at", "desc")
    .limit(10)

  Generates: SELECT * FROM users
             WHERE name = $1
             ORDER BY created_at DESC LIMIT 10
```

**Examples:** [Knex.js](https://github.com/knex/knex), [Kysely](https://github.com/kysely-org/kysely), [SQLAlchemy Core](https://github.com/sqlalchemy/sqlalchemy)
