# WTF is Paxos?

The original distributed consensus algorithm. Gets a group of nodes to agree on a single value even if some nodes fail or messages are delayed. Famously hard to understand and implement correctly. Most systems now use Raft instead, which solves the same problem more clearly.

```
  Proposer        Acceptors        Learner
     │── prepare(n) ──►│              │
     │◄── promise ──────│              │
     │                  │              │
     │── accept(n,v) ──►│              │
     │◄── accepted ─────│              │
     │                  │──accepted──►│
     │                                │
  Majority must agree for a value
  to be chosen (quorum = N/2 + 1)
```

**Examples:** [Apache ZooKeeper (ZAB, Paxos-derived)](https://github.com/apache/zookeeper), [Google Spanner](https://cloud.google.com/spanner), [libpaxos](https://github.com/LibPaxos/libpaxos)
