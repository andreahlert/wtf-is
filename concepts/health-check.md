# WTF is a Health Check?

A periodic probe that asks a service "are you alive and working?" If the service stops responding or returns an error, the load balancer stops sending traffic to it and the orchestrator can restart it.

```
Load Balancer
      |
  GET /health  every 10s
      |
  +--------+    +--------+    +--------+
  | Svc 1  |    | Svc 2  |    | Svc 3  |
  |  200   |    |  200   |    |  503   | <-- removed
  +--------+    +--------+    +--------+
```

**Examples:** [Kubernetes Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/), [Consul Health Checks](https://github.com/hashicorp/consul), [AWS ELB](https://aws.amazon.com/elasticloadbalancing/)
