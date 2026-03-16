# WTF is a Lamport Timestamp?

A Lamport timestamp is a simple logical counter that gives events a partial ordering in a distributed system. Each node keeps a counter, increments it before each event, and includes it in messages. When receiving a message, a node sets its counter to max(local, received) + 1. If A's timestamp is less than B's, A might have happened first, but the reverse isn't guaranteed.

```
  Node 1:  (1)──▶(2)──────────▶(5)
                    \           ↗
                     msg       /
                      \       / msg
  Node 2:        (1)──▶(3)──▶(4)

  Rule: on send/receive, counter = max(local, msg) + 1
  Guarantees: if A caused B, then ts(A) < ts(B)
  Does NOT guarantee: ts(A) < ts(B) means A caused B
```

**Examples:** [etcd](https://github.com/etcd-io/etcd), [Cassandra](https://github.com/apache/cassandra), [ZooKeeper](https://github.com/apache/zookeeper)
