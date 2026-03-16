# WTF are Metrics?

Numeric measurements collected over time that describe the state of your system. Request count, error rate, CPU usage, response time. Unlike logs (individual events), metrics are aggregated numbers designed for dashboards, alerts, and trend analysis.

```
  Time →   t1    t2    t3    t4    t5
  ─────────────────────────────────────
  req/s:   100   120   95    200   180
  errors:   2     1     0     15    3
  CPU %:   45    50    42    85    60
           │                 │
           normal            ← alert!
```

**Examples:** [Prometheus](https://github.com/prometheus/prometheus), [StatsD](https://github.com/statsd/statsd), [Micrometer](https://github.com/micrometer-metrics/micrometer)
