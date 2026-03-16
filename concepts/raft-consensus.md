# WTF is Raft Consensus?

A protocol for getting multiple servers to agree on the same data, even if some crash. One node is elected leader, accepts writes, and replicates them to followers. If the leader dies, followers elect a new one. Designed to be understandable (unlike Paxos).

```
  ┌────────┐    ┌────────┐    ┌────────┐
  │Leader  │───►│Follower│    │Follower│
  │ log:   │───►│ log:   │    │ log:   │
  │ [1,2,3]│    │ [1,2,3]│    │ [1,2,3]│
  └────────┘    └────────┘    └────────┘
       │         replicate to majority
       │         before acknowledging
       ▼
  Client gets "committed" only after
  majority (2 of 3) have the entry
```

**Examples:** [etcd](https://github.com/etcd-io/etcd), [HashiCorp Raft](https://github.com/hashicorp/raft), [Consul](https://github.com/hashicorp/consul)
