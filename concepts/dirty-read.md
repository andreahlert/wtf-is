# WTF is a Dirty Read?

A dirty read happens when a transaction reads data that another transaction has written but not yet committed. If that other transaction rolls back, you've based your logic on data that never existed. This can only happen at the "read uncommitted" isolation level.

```
  TX1:                        TX2:
  BEGIN                       BEGIN
                              UPDATE balance = 0
  SELECT balance → 0 ← dirty read!
  deny_purchase()             ROLLBACK (was a bug)

  Reality: balance was never 0
  TX1 denied a purchase based on phantom data

  Fix: use Read Committed or higher isolation
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQL Server](https://github.com/microsoft/mssql-docker)
