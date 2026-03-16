# WTF is a Quorum?

A quorum is the minimum number of nodes that must agree on a read or write for it to be considered successful. In a cluster of N nodes, requiring a majority (N/2 + 1) ensures that any read quorum and write quorum overlap by at least one node, guaranteeing you see the latest data.

```
  5-node cluster, quorum = 3

  Write "X=5" → need 3 ACKs:
  ┌────┐ ┌────┐ ┌────┐ ┌────┐ ┌────┐
  │ N1 │ │ N2 │ │ N3 │ │ N4 │ │ N5 │
  │ ✓  │ │ ✓  │ │ ✗  │ │ ✓  │ │ ✗  │
  └────┘ └────┘ └────┘ └────┘ └────┘
  3 ACKs ≥ quorum → write succeeds

  W + R > N  →  guaranteed to read latest write
  (3 + 3 > 5 ✓)
```

**Examples:** [etcd/Raft](https://github.com/etcd-io/etcd), [Cassandra](https://github.com/apache/cassandra), [ZooKeeper](https://github.com/apache/zookeeper)
