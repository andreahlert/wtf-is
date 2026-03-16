# WTF is a Vector Clock?

A vector clock is a list of counters, one per node, used to track causality in distributed systems. Each node increments its own counter on every event and includes the full vector when sending messages. By comparing vectors, you can tell if one event happened before another or if they were concurrent.

```
  Node A          Node B          Node C
  {A:1,B:0,C:0}
       │──msg──▶ {A:1,B:1,C:0}
       │                │──msg──▶ {A:1,B:1,C:1}
  {A:2,B:0,C:0}
       │
       └── concurrent with B's {A:1,B:1,C:0}
           (A:2 > A:1 but B:0 < B:1 → conflict!)
```

**Examples:** [Riak](https://github.com/basho/riak), [Dynamo](https://aws.amazon.com/dynamodb/), [Voldemort](https://github.com/voldemort/voldemort)
