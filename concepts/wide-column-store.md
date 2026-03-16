# WTF is a Wide Column Store?

A wide column store organizes data into rows and column families, but each row can have a different set of columns. Think of it as a two-dimensional key-value store where you look up data by row key and column name. It's designed for huge datasets spread across many servers.

```
  Row Key     │ Column Family: profile  │ Column Family: activity
  ────────────┼─────────────────────────┼────────────────────────
  user:alice  │ name=Alice, age=30      │ login=2024-01-15
  user:bob    │ name=Bob                │ login=2024-01-14, score=95
  user:carol  │ name=Carol, city=NYC    │ (empty)

  Each row can have different columns within a family
  Data is sorted by row key for fast range scans
```

**Examples:** [Apache Cassandra](https://github.com/apache/cassandra), [Apache HBase](https://github.com/apache/hbase), [ScyllaDB](https://github.com/scylladb/scylladb)
