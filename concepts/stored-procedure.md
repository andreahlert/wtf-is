# WTF is a Stored Procedure?

A stored procedure is a named block of SQL code that lives inside the database and runs on the database server. You call it by name instead of sending the SQL each time. This can reduce network round trips and let you encapsulate complex logic in the database layer, but it also makes logic harder to version control and test.

```
  Without stored procedure (3 round trips):
  App ──SELECT──▶ DB
  App ──UPDATE──▶ DB
  App ──INSERT──▶ DB

  With stored procedure (1 round trip):
  App ──CALL transfer_funds(A, B, 100)──▶ DB
                                          │ SELECT
                                          │ UPDATE
                                          │ INSERT
                                          │ all server-side
```

**Examples:** [PostgreSQL PL/pgSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQL Server](https://github.com/microsoft/mssql-docker)
