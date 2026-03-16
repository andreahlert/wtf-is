# WTF is Offset Pagination?

Offset pagination skips a number of rows and returns the next batch. Page 5 with 20 items per page means OFFSET 80 LIMIT 20. It's simple to implement but gets slower on deeper pages because the database still has to count through all the skipped rows. Also, inserting or deleting rows between requests can cause items to be skipped or duplicated.

```
  Page 1: OFFSET 0  LIMIT 20   ← fast
  Page 2: OFFSET 20 LIMIT 20   ← fine
  Page 50: OFFSET 980 LIMIT 20 ← DB scans 980 rows, throws them away

  Problem with inserts between pages:
  Page 1: [A B C]
  ← new item X inserted at position 1
  Page 2: [C D E]  ← C appears twice!
```

**Examples:** [Django Paginator](https://github.com/django/django), [Rails Kaminari](https://github.com/kaminari/kaminari), [Spring Data](https://github.com/spring-projects/spring-data-jpa)
