# WTF is a Dashboard?

A visual display of your most important metrics in one place. Request rates, error rates, latency percentiles, CPU usage, all updating in real time. A good dashboard answers "is the system healthy right now?" in under 5 seconds. A bad dashboard has 50 panels and tells you nothing.

```
  ┌─────────────────────────────────────────┐
  │  Service Health Dashboard               │
  ├──────────────┬──────────────────────────┤
  │ Req/sec: 450 │  Errors: 0.1%           │
  ├──────────────┼──────────────────────────┤
  │ p50: 12ms    │  p99: 180ms             │
  ├──────────────┼──────────────────────────┤
  │ CPU: 45%     │  Memory: 62%            │
  └──────────────┴──────────────────────────┘
```

**Examples:** [Grafana](https://github.com/grafana/grafana), [Datadog](https://www.datadoghq.com), [Kibana](https://github.com/elastic/kibana)
