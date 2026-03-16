# WTF is Denormalization?

Denormalization is intentionally adding redundant data back into your tables to speed up reads. Instead of joining five tables on every query, you store pre-computed or duplicated data so a single table scan gives you the answer. You trade write complexity and storage for faster reads.

```
  Normalized (slow read, 2 JOINs):
  orders ──▶ users ──▶ addresses
    │
    └──▶ 3 table lookups per query

  Denormalized (fast read, 0 JOINs):
  ┌────────┬───────┬─────────────┬──────────┐
  │ order  │ user  │ email       │ city     │
  │  101   │ Alice │ a@mail.com  │ Portland │
  └────────┴───────┴─────────────┴──────────┘
    │
    └──▶ 1 table scan, done
```

**Examples:** [Amazon DynamoDB](https://aws.amazon.com/dynamodb/), [MongoDB](https://github.com/mongodb/mongo), [Redis](https://github.com/redis/redis)
