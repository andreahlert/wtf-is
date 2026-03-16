# WTF is the CAP Theorem?

In a distributed system, you can only guarantee two out of three: **Consistency** (every read gets the latest write), **Availability** (every request gets a response), and **Partition tolerance** (the system works even when network links between nodes break). Since network partitions are inevitable, the real choice is between consistency and availability during a failure.

```
Pick two (but P is mandatory in distributed systems):

        C (Consistency)
       / \
      /   \
     /     \
    /  pick  \
   /   two    \
  A ────────── P (Partition Tolerance)
(Availability)

CP: consistent but may reject requests during partition
    → MongoDB, Redis Cluster, HBase

AP: always responds but may return stale data during partition
    → Cassandra, DynamoDB, CouchDB
```

**Examples:** PostgreSQL (CA, single node), MongoDB (CP), Cassandra (AP), DynamoDB (AP)
