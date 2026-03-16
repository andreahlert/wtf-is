# WTF are BASE Properties?

BASE is the opposite philosophy of ACID, used by distributed NoSQL databases. It stands for Basically Available (system always responds), Soft state (data may be temporarily inconsistent), and Eventually consistent (all nodes converge to the same value over time). You trade strict consistency for availability and partition tolerance.

```
  Write "X=5"
       │
       ▼
  ┌─────────┐    sync...    ┌─────────┐
  │ Node A  │──────────────▶│ Node B  │
  │  X = 5  │               │  X = 3  │ ← stale (soft state)
  └─────────┘               └─────────┘
                                 │
                             eventually
                                 ▼
                            ┌─────────┐
                            │ Node B  │
                            │  X = 5  │ ← consistent
                            └─────────┘
```

**Examples:** [Cassandra](https://github.com/apache/cassandra), [DynamoDB](https://aws.amazon.com/dynamodb/), [Riak](https://github.com/basho/riak)
