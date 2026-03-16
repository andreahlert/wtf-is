# WTF is a DaemonSet?

A Kubernetes resource that ensures one copy of a pod runs on every node in the cluster. When a new node joins, it automatically gets the pod. When a node leaves, the pod is removed. Perfect for node-level agents like log collectors or monitoring.

```
Cluster:
+--------+  +--------+  +--------+
| Node 1 |  | Node 2 |  | Node 3 |
| [agent]|  | [agent]|  | [agent]|  <-- DaemonSet
| [app]  |  | [app]  |  |        |  <-- Deployment
| [app]  |  |        |  | [app]  |
+--------+  +--------+  +--------+

New Node 4 added --> [agent] auto-scheduled
```

**Examples:** [Fluentd](https://github.com/fluent/fluentd), [Datadog Agent](https://github.com/DataDog/datadog-agent), [Promtail](https://github.com/grafana/loki)
