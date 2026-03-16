# WTF is Read Committed?

Read committed is a transaction isolation level where a transaction only sees data that has been committed by other transactions. You'll never read uncommitted (dirty) data. However, if another transaction commits a change while yours is running, you may see different results when reading the same row twice within the same transaction.

```
  TX1:                        TX2:
  BEGIN                       BEGIN
  SELECT age → 25             UPDATE age = 30
                              COMMIT
  SELECT age → 30 ← changed!
  COMMIT

  ✓ No dirty reads (never see uncommitted data)
  ✗ Non-repeatable reads (same query, different result)
```

**Examples:** [PostgreSQL (default)](https://github.com/postgres/postgres), [Oracle](https://www.oracle.com/database/), [SQL Server](https://github.com/microsoft/mssql-docker)
