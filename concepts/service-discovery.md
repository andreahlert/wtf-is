# WTF is Service Discovery?

A mechanism that lets services find each other's network addresses automatically. Instead of hardcoding IPs, services register themselves and query a registry when they need to talk to another service. Essential when instances scale up, down, or move around.

```
+----------+     register     +-----------+
| Service A| --------------> |  Registry  |
+----------+                 +-----------+
                                   ^
+----------+     where is A?       |
| Service B| ----------------------+
+----------+     -> 10.0.1.5:8080
```

**Examples:** [Consul](https://github.com/hashicorp/consul), [etcd](https://github.com/etcd-io/etcd), [CoreDNS](https://github.com/coredns/coredns)
