# WTF is a Counter?

A metric that only goes up. It counts events: total requests, total errors, total bytes sent. You never set a counter to a specific value, you only increment it. To get a rate (requests per second), you calculate the difference between two counter readings over time.

```
  Counter: http_requests_total

  t1: 1000
  t2: 1050    ← 50 requests in this interval
  t3: 1200    ← 150 requests in this interval
  t4: 1201    ← 1 request in this interval

  Never goes down (resets only on restart)
  rate = (1200 - 1050) / interval = req/sec
```

**Examples:** [Prometheus client](https://github.com/prometheus/client_golang), [Micrometer](https://github.com/micrometer-metrics/micrometer), [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification)
