# WTF are the Three Pillars of Observability?

Logs, metrics, and traces. Logs tell you what happened (text events). Metrics tell you how much or how many (numbers over time). Traces tell you the path a request took through your distributed system and how long each step took.

```
  ┌──────────────────────────────────────┐
  │        Three Pillars                 │
  │                                      │
  │  Logs       Metrics      Traces      │
  │  ────       ───────      ──────      │
  │  "error     req/sec: 42  svc A       │
  │   at line   CPU: 73%      → svc B    │
  │   42"       p99: 200ms     → DB      │
  │             ▲              120ms      │
  │  text       numbers      request flow│
  └──────────────────────────────────────┘
```

**Examples:** [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification), [Grafana Stack](https://github.com/grafana/grafana), [Elastic](https://github.com/elastic/elasticsearch)
