# WTF is SQL Injection?

SQL Injection is when an attacker sneaks SQL commands into user input fields that get concatenated into database queries. Instead of a username, they type something like `' OR 1=1 --` and the database executes it as part of the query. This can dump entire databases, bypass logins, or delete data.

```
Login form:  username = ' OR 1=1 --

Query becomes:
  SELECT * FROM users
  WHERE username = '' OR 1=1 --'
                   ^^^^^^^^
                   Always true → returns all rows

Fix: use parameterized queries
  SELECT * FROM users WHERE username = ?
                                       ^ value bound separately
```

**Examples:** [sqlmap](https://github.com/sqlmapproject/sqlmap), [Prisma](https://github.com/prisma/prisma), [SQLAlchemy](https://github.com/sqlalchemy/sqlalchemy)
