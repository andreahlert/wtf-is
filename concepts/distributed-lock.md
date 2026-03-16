# WTF is Distributed Lock?

A lock that works across multiple servers. When multiple instances of your app need to ensure only one runs a critical section at a time (like processing a payment), they acquire a distributed lock. The lock lives in a shared store like Redis or ZooKeeper, not in process memory.

```
  Server A         Redis           Server B
     │── LOCK ──────►│               │
     │◄── OK ───────│               │
     │               │◄── LOCK ─────│
     │               │── DENIED ───►│
     │ (working...)  │               │ (waits)
     │── UNLOCK ────►│               │
     │               │◄── LOCK ─────│
     │               │── OK ───────►│
```

**Examples:** [Redlock (Redis)](https://github.com/redis/redis), [Apache ZooKeeper](https://github.com/apache/zookeeper), [etcd](https://github.com/etcd-io/etcd)
