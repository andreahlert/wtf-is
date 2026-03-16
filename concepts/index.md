# WTF is a Database Index?

An index is a separate data structure that helps the database find rows without scanning the entire table. Think of it like a book's index: instead of reading every page to find "PostgreSQL," you look it up in the back and jump to the right page. Indexes speed up reads but slow down writes because the index must be updated too.

```
  Without index:          With index:
  ┌──────────────┐        ┌──────────────┐
  │ scan row 1   │        │ Index        │
  │ scan row 2   │        │  "Bob" ──► row 4
  │ scan row 3   │        │  "Eve" ──► row 2
  │ scan row 4 ✓ │        └──────────────┘
  │ scan row 5   │              │
  │ ...          │              ▼ jump directly
  │ scan row N   │           ┌──────┐
  └──────────────┘           │row 4 │ ✓
   O(N) full scan            └──────┘
                              O(log N)
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [SQLite](https://github.com/sqlite/sqlite)
