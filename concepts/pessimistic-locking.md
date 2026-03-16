# WTF is Pessimistic Locking?

Assume conflicts are likely. Lock the data BEFORE you start working on it so nobody else can touch it. Other transactions wait until you release the lock. Prevents conflicts entirely but reduces throughput because everyone queues up.

```
  User A                DB              User B
   │── SELECT FOR      │               │
   │   UPDATE (lock) ──►│               │
   │◄── data (locked) ──│               │
   │                     │◄── SELECT FOR│
   │  (working...)       │    UPDATE ───│
   │                     │── BLOCKED ──►│
   │── UPDATE + commit ─►│   (waits...) │
   │   (lock released)   │              │
   │                     │── data ─────►│
```

**Examples:** [PostgreSQL SELECT FOR UPDATE](https://www.postgresql.org/docs/current/explicit-locking.html), [MySQL InnoDB](https://dev.mysql.com/doc/refman/en/innodb-locking.html), [SQLAlchemy with_for_update()](https://github.com/sqlalchemy/sqlalchemy)
