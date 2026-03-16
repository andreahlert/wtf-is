# WTF is a Database Trigger?

A trigger is a function that the database automatically executes before or after an INSERT, UPDATE, or DELETE on a table. You don't call it manually; it fires in response to data changes. Triggers are useful for audit logs and enforcing business rules, but they can make debugging hard because the logic is invisible to the application.

```
  CREATE TRIGGER audit_log
  AFTER UPDATE ON users
  FOR EACH ROW
  INSERT INTO audit (table, old_val, new_val, changed_at)
  VALUES ('users', OLD.name, NEW.name, NOW());

  App: UPDATE users SET name = 'Bob' WHERE id = 1;
       │
       └──▶ trigger fires automatically
            └──▶ audit row inserted (invisible to app)
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQLite](https://github.com/sqlite/sqlite)
