# WTF is the Operator Pattern?

A Kubernetes pattern where a custom controller watches custom resources and automates complex operational tasks (backups, failovers, upgrades) that would normally require a human operator. You define the "what" and the operator handles the "how."

```
You create:
  kind: PostgresCluster
  spec:
    replicas: 3
    version: "15"

Operator watches and acts:
  [Operator] --> sees PostgresCluster
            --> creates StatefulSet with 3 replicas
            --> configures replication
            --> sets up automated backups
            --> handles failover when primary dies
```

**Examples:** [Operator SDK](https://github.com/operator-framework/operator-sdk), [Zalando Postgres Operator](https://github.com/zalando/postgres-operator), [Strimzi Kafka Operator](https://github.com/strimzi/strimzi-kafka-operator)
