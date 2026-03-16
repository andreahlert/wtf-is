# WTF are the Golden Signals?

Four metrics from Google's SRE book that every service should monitor: latency (how fast), traffic (how much), errors (how often it fails), and saturation (how full). If you can only have four graphs on your dashboard, use these.

```
  ┌────────────────────────────────────┐
  │         Golden Signals             │
  ├──────────────┬─────────────────────┤
  │ Latency      │ How long requests   │
  │              │ take (p50, p99)     │
  ├──────────────┼─────────────────────┤
  │ Traffic      │ Requests per second │
  ├──────────────┼─────────────────────┤
  │ Errors       │ % of failed requests│
  ├──────────────┼─────────────────────┤
  │ Saturation   │ CPU, memory, disk   │
  │              │ how "full" is it    │
  └──────────────┴─────────────────────┘
```

**Examples:** [Google SRE Book](https://sre.google/sre-book/monitoring-distributed-systems/), [Grafana](https://github.com/grafana/grafana), [Datadog](https://www.datadoghq.com)
