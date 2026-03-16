# WTF is Unit of Work?

Tracks all changes you make during a business transaction and commits them as a single batch. Instead of saving each entity individually, the Unit of Work collects inserts, updates, and deletes, then flushes them to the database in one go. All or nothing.

```
  ┌─── Unit of Work ────────────────┐
  │                                  │
  │  New:     [User A, Order B]     │
  │  Dirty:   [User C]              │
  │  Deleted: [Order D]             │
  │                                  │
  │  commit() ──► single transaction │
  │  rollback() ──► discard all     │
  └──────────────────────────────────┘
```

**Examples:** [SQLAlchemy Session](https://github.com/sqlalchemy/sqlalchemy), [Entity Framework DbContext](https://github.com/dotnet/efcore), [Hibernate](https://github.com/hibernate/hibernate-orm)
