# WTF is a Histogram?

A metric that tracks the distribution of values, not just the average. It puts each observation (like response time) into buckets: how many requests took 0-50ms, 50-100ms, 100-250ms, etc. This lets you calculate percentiles and spot that 1% of requests taking 5 seconds.

```
  Response times (1000 requests):

  0-50ms   │████████████████████  800
  50-100ms │████                  150
  100-250ms│█                      40
  250-500ms│                        8
  500ms+   │                        2

  Average: 45ms (looks fine)
  p99: 480ms  (histogram reveals the truth)
```

**Examples:** [Prometheus](https://github.com/prometheus/prometheus), [HDR Histogram](https://github.com/HdrHistogram/HdrHistogram), [Micrometer](https://github.com/micrometer-metrics/micrometer)
