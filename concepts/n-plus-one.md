# WTF is the N+1 Query Problem?

The N+1 problem happens when your code runs 1 query to get a list of N items, then runs N more queries to get related data for each item. Instead of 1 or 2 queries, you end up with 101 queries for 100 items. The fix is to fetch all related data in a single batch query (eager loading).

```
  N+1 Problem (101 queries for 100 posts):
  SELECT * FROM posts;                    ← 1 query
  SELECT * FROM users WHERE id = 1;      ← N queries
  SELECT * FROM users WHERE id = 2;         (one per post)
  SELECT * FROM users WHERE id = 3;
  ... x100

  Fixed (2 queries):
  SELECT * FROM posts;                    ← 1 query
  SELECT * FROM users WHERE id IN (1,2,3...); ← 1 query
```

**Examples:** [SQLAlchemy](https://github.com/sqlalchemy/sqlalchemy), [Prisma](https://github.com/prisma/prisma), [Django ORM](https://github.com/django/django)
