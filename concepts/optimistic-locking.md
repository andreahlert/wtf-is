# WTF is Optimistic Locking?

Assume conflicts are rare. Read the data with a version number, do your work, then write back only if the version hasn't changed. If someone else changed it first, your write fails and you retry. No locks held during processing, so throughput is high when conflicts are uncommon.

```
  User A                DB              User B
   │── read (v=1) ─────►│◄── read (v=1)──│
   │◄── data, v=1 ──────│── data, v=1 ──►│
   │                     │                │
   │── update (v=1→2) ──►│               │
   │◄── OK, now v=2 ────│               │
   │                     │◄── update (v=1→2)
   │                     │── CONFLICT! ──►│
   │                     │   (v is now 2) │
```

**Examples:** [JPA @Version](https://github.com/hibernate/hibernate-orm), [Django OLP](https://github.com/django/django), [DynamoDB Conditional Writes](https://aws.amazon.com/dynamodb/)
