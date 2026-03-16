# WTF is Table Partitioning?

Table partitioning splits a large table into smaller physical pieces while keeping it logically one table. Queries that filter on the partition key only scan the relevant partition instead of the whole table. Common strategies are range (by date), list (by region), or hash (by ID).

```
  orders table partitioned by year:

  SELECT * FROM orders WHERE date = '2024-03-15';

  ┌────────────┐  ┌────────────┐  ┌────────────┐
  │ orders_2022│  │ orders_2023│  │ orders_2024│ ← only this
  │  (skip)    │  │  (skip)    │  │  (scanned) │   partition
  └────────────┘  └────────────┘  └────────────┘

  App sees one "orders" table
  DB only touches the relevant partition
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [ClickHouse](https://github.com/ClickHouse/ClickHouse)
