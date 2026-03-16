# WTF is Factory Pattern?

Instead of using `new` directly, you delegate object creation to a factory method or class. The caller says "give me a database connection" without knowing if it's Postgres, MySQL, or SQLite. The factory decides which concrete class to instantiate.

```
  Client          Factory            Products
  ┌──────┐    ┌────────────┐     ┌───────────┐
  │      │───►│ create(    │────►│ PostgresDB│
  │ App  │    │   "pg"     │     ├───────────┤
  │      │    │ )          │────►│ MySQLDB   │
  └──────┘    └────────────┘     ├───────────┤
                                 │ SQLiteDB  │
  Client never calls "new"       └───────────┘
```

**Examples:** [Angular Injection](https://github.com/angular/angular), [boto3](https://github.com/boto/boto3), [Logback](https://github.com/qos-ch/logback)
