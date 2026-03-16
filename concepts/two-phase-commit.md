# WTF is Two-Phase Commit?

A protocol to ensure all participants in a distributed transaction either all commit or all rollback. Phase 1: coordinator asks everyone "can you commit?" Phase 2: if all say yes, coordinator tells everyone to commit. If anyone says no, everyone rolls back.

```
  Coordinator         DB-A          DB-B
      │── prepare? ────►│             │
      │── prepare? ────────────────►│
      │◄── yes ─────────│             │
      │◄── yes ───────────────────── │
      │                               │
      │── commit! ─────►│             │
      │── commit! ─────────────────►│
      │◄── done ────────│             │
      │◄── done ───────────────────── │
```

**Examples:** [PostgreSQL 2PC](https://www.postgresql.org/docs/current/two-phase.html), [Atomikos](https://github.com/atomikos/transactions-essentials), [Narayana](https://github.com/jbosstm/narayana)
