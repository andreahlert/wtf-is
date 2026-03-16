# WTF is Connection Pooling?

Connection pooling keeps a set of pre-established connections open and reuses them instead of creating a new one for every request. Opening a connection (especially TCP + TLS) is expensive, so pooling avoids that overhead. When your code needs a connection, it borrows one from the pool, uses it, and returns it. This is critical for database and HTTP client performance.

```
Without pooling:              With pooling:

Request 1: open → use → close   Pool: [conn1, conn2, conn3]
Request 2: open → use → close
Request 3: open → use → close   Request 1: borrow conn1 → use → return
                                 Request 2: borrow conn2 → use → return
3 handshakes                     Request 3: borrow conn1 → use → return
3 teardowns
                                 0 handshakes (already open)
                                 0 teardowns (kept alive)
```

**Examples:** [PgBouncer](https://github.com/pgbouncer/pgbouncer), [HikariCP](https://github.com/brettwooldridge/HikariCP), [urllib3](https://github.com/urllib3/urllib3)
