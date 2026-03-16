# WTF is a Namespace (Kubernetes)?

A virtual partition inside a Kubernetes cluster that isolates resources by name. Different teams or environments can use the same cluster without stepping on each other. Resources in one namespace are invisible to another by default.

```
Cluster
+----------------------------------+
| namespace: dev                   |
|   [app] [db] [cache]            |
+----------------------------------+
| namespace: staging               |
|   [app] [db] [cache]            |
+----------------------------------+
| namespace: production            |
|   [app] [db] [cache]            |
+----------------------------------+
```

**Examples:** [Kubernetes](https://github.com/kubernetes/kubernetes), [Rancher](https://github.com/rancher/rancher), [Lens](https://github.com/MuhammedKalworworken/lens)
