# WTF is a Connection String?

A connection string is a single string that contains everything needed to connect to a database: host, port, username, password, database name, and optional parameters. Instead of passing each piece separately, you pack it all into one URI that your driver or ORM can parse.

```
  postgresql://user:pass@host:5432/mydb?sslmode=require
  ├────────┤  ├──┤ ├──┤ ├──┤ ├──┤ ├──┤ ├─────────────┤
  │ scheme │  user pass  host port  db    parameters

  More examples:
  mysql://root:secret@localhost:3306/app
  mongodb://user:pass@host1:27017,host2:27017/db?replicaSet=rs0
  redis://default:pass@cache.example.com:6379/0
```

**Examples:** [SQLAlchemy](https://github.com/sqlalchemy/sqlalchemy), [Prisma](https://github.com/prisma/prisma), [node-postgres](https://github.com/brianc/node-postgres)
