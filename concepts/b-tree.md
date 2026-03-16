# WTF is a B-Tree?

A B-Tree is a self-balancing tree data structure that keeps data sorted and allows searches, insertions, and deletions in O(log N) time. Each node can hold multiple keys and has multiple children, which keeps the tree short and wide. Most relational databases use B-Trees (or B+ Trees) for their indexes.

```
              ┌───────┐
              │ 10 20 │         ← root node
              └┬──┬──┬┘
         ┌─────┘  │  └─────┐
         ▼        ▼        ▼
      ┌─────┐ ┌─────┐ ┌──────┐
      │ 3 7 │ │12 15│ │25 30 │  ← internal nodes
      └┬─┬─┬┘ └┬─┬─┬┘ └┬──┬─┬┘
       ▼ ▼ ▼   ▼ ▼ ▼   ▼  ▼  ▼
      leaves with actual data rows
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [SQLite](https://github.com/sqlite/sqlite), [InnoDB](https://github.com/mysql/mysql-server)
