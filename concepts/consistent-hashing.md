# WTF is Consistent Hashing?

A way to distribute data across nodes so that adding or removing a node only moves a small fraction of keys. Regular hashing remaps almost everything when the node count changes. Consistent hashing maps both keys and nodes onto a ring, minimizing redistribution.

```
  Hash Ring (0 to 360)

        Node A (90)
           ●
      ╱         ╲
    ╱     key1    ╲
  ●─────── · ───────● Node B (200)
  Node D            │
  (350)    key2 ·   │
    ╲             ╱
      ╲         ╱
           ●
        Node C (270)

  Remove Node B → only keys between A..B move to C
```

**Examples:** [ketama](https://github.com/RJ/ketern), [Apache Cassandra](https://github.com/apache/cassandra), [groupcache](https://github.com/golang/groupcache)
