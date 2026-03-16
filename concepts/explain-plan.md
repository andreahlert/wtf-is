# WTF is an EXPLAIN Plan?

EXPLAIN is a command that shows you what the database query planner decided to do with your query, without actually running it. It reveals whether indexes are used, what join strategies were chosen, and estimated costs. EXPLAIN ANALYZE actually runs the query and shows real execution times alongside the estimates.

```
  EXPLAIN SELECT * FROM users WHERE email = 'a@b.com';

  ┌─────────────────────────────────────────────┐
  │ Index Scan using idx_email on users          │
  │   Index Cond: (email = 'a@b.com')           │
  │   Cost: 0.28..8.30  rows=1  width=64        │
  └─────────────────────────────────────────────┘
        ▲
        └── Good: using index, not sequential scan
```

**Examples:** [PostgreSQL EXPLAIN](https://github.com/postgres/postgres), [explain.dalibo.com](https://explain.dalibo.com/), [MySQL EXPLAIN](https://github.com/mysql/mysql-server)
