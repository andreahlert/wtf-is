# WTF is Cursor Pagination?

Cursor pagination uses a pointer (usually an encoded ID or timestamp) to mark where the last page ended, then fetches the next batch after that point. Unlike offset pagination, it doesn't slow down on later pages because the database can seek directly to the cursor position using an index.

```
  Request 1: GET /items?limit=3
  Response:  [A, B, C]  next_cursor="C_id"

  Request 2: GET /items?limit=3&cursor=C_id
  Response:  [D, E, F]  next_cursor="F_id"

  SQL: SELECT * FROM items
       WHERE id > 'C_id'    ← index seek, always fast
       ORDER BY id
       LIMIT 3
```

**Examples:** [Relay Cursor Spec](https://relay.dev/graphql/connections.htm), [Prisma](https://github.com/prisma/prisma), [Stripe API](https://stripe.com/docs/api/pagination)
