# WTF is NewSQL?

NewSQL databases give you the horizontal scalability of NoSQL while keeping the ACID transactions and SQL interface of traditional relational databases. They distribute data across many nodes but still let you do joins, foreign keys, and multi-row transactions as if it were a single-node database.

```
  Traditional SQL:     NoSQL:            NewSQL:
  ┌──────────┐        ┌──────────┐      ┌──────────┐
  │ 1 node   │        │ N nodes  │      │ N nodes  │
  │ ACID ✓   │        │ ACID ✗   │      │ ACID ✓   │
  │ SQL  ✓   │        │ SQL  ✗   │      │ SQL  ✓   │
  │ Scale ✗  │        │ Scale ✓  │      │ Scale ✓  │
  └──────────┘        └──────────┘      └──────────┘
```

**Examples:** [CockroachDB](https://github.com/cockroachdb/cockroach), [TiDB](https://github.com/pingcap/tidb), [YugabyteDB](https://github.com/yugabyte/yugabyte-db)
