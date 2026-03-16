# WTF is Database Replication?

Database replication copies data from one database server to one or more others in real time. This gives you redundancy (if one server dies, another has the data), read scaling (spread read queries across replicas), and geographic distribution (put replicas closer to users).

```
  ┌──────────┐  writes  ┌──────────┐
  │   App    │─────────▶│ Primary  │
  └──────────┘          └────┬─────┘
       │                     │ replication stream
       │ reads          ┌────┴─────┐
       │           ┌────▼───┐ ┌────▼───┐
       └──────────▶│Replica1│ │Replica2│
                   └────────┘ └────────┘
```

**Examples:** [PostgreSQL Streaming Replication](https://github.com/postgres/postgres), [MySQL Replication](https://github.com/mysql/mysql-server), [MongoDB Replica Sets](https://github.com/mongodb/mongo)
