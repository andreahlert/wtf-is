# WTF is the RED Method?

A monitoring method for request-driven services: Rate (requests per second), Errors (failed requests per second), and Duration (latency distribution). It's the golden signals simplified for microservices. If you instrument every service with RED, you can quickly find which one is misbehaving.

```
  For each microservice, track:

  R - Rate:      req/sec     "How busy is it?"
  E - Errors:    errors/sec  "How often does it fail?"
  D - Duration:  p50, p99    "How slow is it?"

  Service A:  R=100  E=0.5  D=12ms   ← healthy
  Service B:  R=100  E=45   D=800ms  ← problem here
  Service C:  R=80   E=0.1  D=5ms    ← healthy
```

**Examples:** [Grafana](https://github.com/grafana/grafana), [Prometheus](https://github.com/prometheus/prometheus), [Datadog](https://www.datadoghq.com)
