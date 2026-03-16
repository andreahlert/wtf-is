# WTF are Percentiles (p50, p95, p99)?

A way to describe the distribution of values. p50 (median) means 50% of requests are faster than this. p95 means 95% are faster. p99 means 99% are faster, and the remaining 1% are slower. Averages lie; percentiles tell you how your slowest users experience the system.

```
  1000 requests sorted by response time:

  ├─── p50: 45ms ──── 500 requests faster than this
  │
  ├─── p95: 200ms ─── 950 requests faster than this
  │
  ├─── p99: 800ms ─── 990 requests faster than this
  │
  └─── max: 5000ms ── the slowest request

  Average: 60ms  (hides the pain at the tail)
```

**Examples:** [Prometheus](https://github.com/prometheus/prometheus), [HDR Histogram](https://github.com/HdrHistogram/HdrHistogram), [Datadog](https://www.datadoghq.com)
