# WTF is Leader Election?

A process where distributed nodes agree on which one is "the leader" that coordinates work. If the leader dies, the remaining nodes elect a new one. Only the leader handles certain tasks (like writes or scheduling), preventing conflicts from multiple nodes acting independently.

```
  ┌───────┐  ┌───────┐  ┌───────┐
  │Node A │  │Node B │  │Node C │
  │LEADER★│  │follower│  │follower│
  └───┬───┘  └───┬───┘  └───┬───┘
      │ dies      │          │
      ✗           │◄─vote───│
                  │ wins!    │
            ┌─────▼─────┐   │
            │  Node B   │   │
            │  LEADER★  │   │
            └───────────┘   │
```

**Examples:** [Apache ZooKeeper](https://github.com/apache/zookeeper), [etcd](https://github.com/etcd-io/etcd), [Consul](https://github.com/hashicorp/consul)
