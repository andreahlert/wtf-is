# WTF is a Phantom Read?

A phantom read happens when a transaction runs the same range query twice and gets different rows back because another transaction inserted or deleted matching rows in between. You're not re-reading a changed row (that's non-repeatable read), you're seeing entirely new rows that weren't there before.

```
  TX1:                              TX2:
  BEGIN
  SELECT * WHERE age > 20
  → returns [Alice, Bob]
                                    INSERT Carol (age=25)
                                    COMMIT
  SELECT * WHERE age > 20
  → returns [Alice, Bob, Carol]
                    ▲
                    └── phantom row appeared!

  Fixed by: Serializable isolation or gap locks
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL/InnoDB](https://github.com/mysql/mysql-server), [SQL Server](https://github.com/microsoft/mssql-docker)
