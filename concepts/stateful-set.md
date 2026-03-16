# WTF is a StatefulSet?

A Kubernetes workload for apps that need stable identity and persistent storage, like databases. Unlike Deployments, each pod gets a fixed name (db-0, db-1, db-2), its own persistent volume, and pods are created and deleted in order.

```
StatefulSet "db":
  db-0  -->  [PV-0]   (created first, deleted last)
  db-1  -->  [PV-1]   (created second)
  db-2  -->  [PV-2]   (created third, deleted first)

Pod dies and restarts?
  db-1 comes back as db-1 with the same PV-1.
```

**Examples:** [Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/), [Zalando Postgres Operator](https://github.com/zalando/postgres-operator), [Strimzi Kafka](https://github.com/strimzi/strimzi-kafka-operator)
