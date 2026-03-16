# WTF is Health Endpoint?

A dedicated API endpoint (usually `/health` or `/healthz`) that reports whether your service is running and ready to handle requests. Load balancers and orchestrators poll it to decide whether to route traffic to that instance or restart it.

```
  Load Balancer         Services
  ┌──────────┐     ┌─────────────────┐
  │          │────►│ GET /health     │
  │ checks   │     │ → {"status":"up"}│  ✓ route traffic
  │ every    │     └─────────────────┘
  │ 10s      │     ┌─────────────────┐
  │          │────►│ GET /health     │
  │          │     │ → 503           │  ✗ stop routing
  └──────────┘     └─────────────────┘

  Liveness:  is the process alive?
  Readiness: can it handle requests?
```

**Examples:** [Spring Boot Actuator](https://github.com/spring-projects/spring-boot), [Kubernetes Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/), [Terminus (NestJS)](https://github.com/nestjs/terminus)
