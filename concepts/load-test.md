# WTF is a Load Test?

A test that simulates expected real-world traffic to see if your system handles it without degradation. You define the number of concurrent users or requests per second and measure response times, error rates, and resource usage. If your system handles 1000 users in production, you load test with 1000 users.

```
  Simulated Users
  ████████████  → 1000 req/s
       │
       ▼
  ┌─────────┐    Response time OK?
  │  System  │──▶ Error rate < 1%?
  └─────────┘    CPU/RAM stable?
```

**Examples:** [k6](https://github.com/grafana/k6), [Locust](https://github.com/locustio/locust), [Gatling](https://github.com/gatling/gatling)
