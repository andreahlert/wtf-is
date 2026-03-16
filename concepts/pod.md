# WTF is a Pod?

The smallest deployable unit in Kubernetes. A pod wraps one or more containers that share the same network and storage. Usually it's just one container, but sometimes you add sidecars (logging, proxy) that need to live alongside the main app.

```
Pod
+---------------------------+
| shared network (localhost)|
| shared volumes            |
|                           |
| [main-app]  [sidecar]    |
|  :8080       :9090        |
+---------------------------+
       IP: 10.0.1.5
```

**Examples:** [Kubernetes](https://github.com/kubernetes/kubernetes), [Podman](https://github.com/containers/podman), [k3s](https://github.com/k3s-io/k3s)
