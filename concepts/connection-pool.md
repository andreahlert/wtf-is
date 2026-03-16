# WTF is a Connection Pool?

A connection pool keeps a set of pre-opened database connections ready to reuse. Opening a new database connection is expensive (TCP handshake, auth, memory allocation), so instead of creating and destroying one per request, your app borrows from the pool and returns it when done. This dramatically reduces latency and resource usage.

```
  App Threads          Connection Pool         Database
  ┌────────┐          ┌──────────────┐
  │ Req 1  │─borrow──▶│ conn 1 (busy)│────────▶ ┌────┐
  │ Req 2  │─borrow──▶│ conn 2 (busy)│────────▶ │ DB │
  │ Req 3  │─wait...  │ conn 3 (idle)│────────▶ └────┘
  └────────┘          └──────────────┘
                       max_size = 3
```

**Examples:** [PgBouncer](https://github.com/pgbouncer/pgbouncer), [HikariCP](https://github.com/brettwooldridge/HikariCP), [SQLAlchemy Pool](https://github.com/sqlalchemy/sqlalchemy)
