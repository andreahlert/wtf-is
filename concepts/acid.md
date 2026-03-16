# WTF is ACID?

ACID is a set of four guarantees that database transactions provide: Atomicity (all or nothing), Consistency (data stays valid), Isolation (concurrent transactions don't interfere), and Durability (committed data survives crashes). If any part of a transaction fails, the whole thing rolls back like it never happened.

```
  Transaction: Transfer $100
  ┌─────────────────────────┐
  │ 1. Read balance A       │  Atomic: all steps
  │ 2. A = A - 100          │  succeed or all
  │ 3. Read balance B       │  roll back
  │ 4. B = B + 100          │
  │ 5. COMMIT ───────────►  │  Durable: saved to disk
  └─────────────────────────┘
       ▲
       │ Isolated from other
       │ transactions running
       │ at the same time
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL/InnoDB](https://github.com/mysql/mysql-server), [CockroachDB](https://github.com/cockroachdb/cockroach)
