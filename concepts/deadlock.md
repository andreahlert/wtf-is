# WTF is a Deadlock?

A deadlock happens when two or more transactions are each waiting for a lock the other holds, so none of them can proceed. Transaction A holds lock on row 1 and wants row 2, while transaction B holds lock on row 2 and wants row 1. The database detects this and kills one of them to break the cycle.

```
  TX1: LOCK row 1 ✓ ... wants LOCK row 2 (blocked by TX2)
                              ▲
                              │ circular wait
                              ▼
  TX2: LOCK row 2 ✓ ... wants LOCK row 1 (blocked by TX1)

  Database detects cycle → aborts one transaction
  Victim TX gets: ERROR: deadlock detected

  Fix: always acquire locks in the same order
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL/InnoDB](https://github.com/mysql/mysql-server), [SQL Server](https://github.com/microsoft/mssql-docker)
