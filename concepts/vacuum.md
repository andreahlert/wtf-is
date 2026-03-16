# WTF is Vacuum?

Vacuum is PostgreSQL's garbage collection process. Because MVCC keeps old row versions around for concurrent readers, someone has to clean them up after all transactions that could see them are done. Vacuum reclaims that dead space and updates statistics the query planner uses. Without it, tables bloat and queries slow down.

```
  Table with dead tuples:
  ┌────┬────┬────┬────┬────┬────┐
  │live│dead│live│dead│dead│live│
  └────┴────┴────┴────┴────┴────┘

  After VACUUM:
  ┌────┬────┬────┬────┬────┬────┐
  │live│free│live│free│free│live│
  └────┴────┴────┴────┴────┴────┘
         ▲         ▲     ▲
         └─── reusable space ───┘
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [pg_repack](https://github.com/reorg/pg_repack), [pgstattuple](https://www.postgresql.org/docs/current/pgstattuple.html)
