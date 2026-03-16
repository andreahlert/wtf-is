# WTF is Materialized View?

A precomputed query result stored as a table. Instead of running an expensive JOIN every time someone asks for a report, the database stores the result and serves it instantly. You refresh it periodically or on-demand. Trades storage and freshness for speed.

```
  Regular View:
  SELECT ... JOIN ... JOIN ...  → computed every time (slow)

  Materialized View:
  ┌─────────────────────────┐
  │ Stored result table     │ → instant reads
  │ user_id │ total │ rank  │
  │    1    │  500  │   3   │
  │    2    │  900  │   1   │
  └─────────────────────────┘
    refreshed on schedule or trigger
```

**Examples:** [PostgreSQL](https://www.postgresql.org/docs/current/sql-creatematerializedview.html), [dbt](https://github.com/dbt-labs/dbt-core), [Apache Flink](https://github.com/apache/flink)
