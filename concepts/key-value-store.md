# WTF is a Key-Value Store?

A key-value store is the simplest type of database: you give it a key and a value, and it stores the pair. You retrieve data by key only. No schemas, no queries on values, no joins. This simplicity makes it extremely fast and easy to scale horizontally.

```
  SET "user:42:name" → "Alice"
  SET "user:42:email" → "a@b.com"
  SET "session:abc123" → "{...json...}"

  GET "user:42:name" → "Alice"   O(1)

  ┌─────────────────┬──────────────┐
  │ key             │ value        │
  ├─────────────────┼──────────────┤
  │ user:42:name    │ Alice        │
  │ session:abc123  │ {json blob}  │
  └─────────────────┴──────────────┘
```

**Examples:** [Redis](https://github.com/redis/redis), [etcd](https://github.com/etcd-io/etcd), [Amazon DynamoDB](https://aws.amazon.com/dynamodb/)
