# WTF is Primary-Replica?

Primary-replica (formerly master-slave) is a replication setup where one node handles all writes and streams changes to read-only replicas. The app sends writes to the primary and can spread reads across replicas. If the primary fails, a replica gets promoted to take over.

```
  ┌──────────┐          ┌──────────┐
  │   App    │──write──▶│ Primary  │
  └────┬─────┘          └──┬───┬───┘
       │                   │   │
       │ read         WAL  │   │ WAL
       │               ┌───▼┐ ┌▼────┐
       └──────────────▶│ R1 │ │ R2  │
                       └────┘ └─────┘
                       read-only replicas

  Primary fails → R1 promoted to primary
```

**Examples:** [PostgreSQL](https://github.com/postgres/postgres), [MySQL](https://github.com/mysql/mysql-server), [Redis Sentinel](https://github.com/redis/redis)
