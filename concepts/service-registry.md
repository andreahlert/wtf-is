# WTF is Service Registry?

A directory where services register themselves so other services can find them. Instead of hardcoding IP addresses, a service asks the registry "where is the payment service?" and gets back a current address. Services register on startup and deregister on shutdown.

```
  ┌────────────────────────────┐
  │     Service Registry       │
  │                            │
  │  payment → 10.0.1.5:8080  │
  │  orders  → 10.0.1.6:3000  │
  │  users   → 10.0.1.7:4000  │
  └─────────────┬──────────────┘
                │
  Order Service │ "where is payment?"
  ──────────────┘ → 10.0.1.5:8080
```

**Examples:** [Consul](https://github.com/hashicorp/consul), [Eureka](https://github.com/Netflix/eureka), [etcd](https://github.com/etcd-io/etcd)
