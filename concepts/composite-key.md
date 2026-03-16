# WTF is a Composite Key?

A composite key is a primary key made of two or more columns combined. Neither column is unique by itself, but together they uniquely identify a row. This is common in junction tables (many-to-many relationships) and tables where the natural identifier involves multiple fields.

```
  student_courses table:
  ┌────────────┬───────────┬───────┐
  │ student_id │ course_id │ grade │
  ├────────────┼───────────┼───────┤
  │     1      │   101     │   A   │
  │     1      │   102     │   B   │  ← same student, ok
  │     2      │   101     │   A   │  ← same course, ok
  │     1      │   101     │   C   │  ← DUPLICATE, rejected
  └────────────┴───────────┴───────┘
       └─────────┘
     composite PK (student_id + course_id)
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [Django ORM](https://github.com/django/django)
