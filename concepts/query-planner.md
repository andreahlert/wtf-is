# WTF is a Query Planner?

A query planner is the part of a database engine that decides how to execute your SQL query. It considers available indexes, table sizes, join order, and statistics to pick the fastest execution strategy. The same query can be executed in many different ways, and the planner's job is to find the cheapest one.

```
  SELECT * FROM orders JOIN users ON ...

  Plan A: Scan orders → Nested Loop → Index on users
  Cost: 1,200

  Plan B: Hash Join (orders, users)
  Cost: 800  ← planner picks this one

  Plan C: Merge Join (sort both, merge)
  Cost: 2,500
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [DuckDB](https://github.com/duckdb/duckdb)
