# WTF is Read Uncommitted?

Read uncommitted is the weakest transaction isolation level. A transaction can see changes made by other transactions even before they commit. If those transactions roll back, you've read data that never actually existed (a dirty read). Almost nobody uses this level intentionally because the data you read might be garbage.

```
  TX1:                        TX2:
  BEGIN                       BEGIN
                              UPDATE price = 0.01
  SELECT price → 0.01 ← dirty read!
                              ROLLBACK (oops, was a mistake)

  TX1 acted on data that never really existed

  Isolation levels (weakest to strongest):
  Read Uncommitted → Read Committed → Repeatable Read → Serializable
```

**Examples:** [MySQL](https://github.com/mysql/mysql-server), [SQL Server](https://github.com/microsoft/mssql-docker), [PostgreSQL](https://github.com/postgres/postgres)
