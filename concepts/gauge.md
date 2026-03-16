# WTF is a Gauge?

A metric that can go up or down. It represents a current value at a point in time: CPU usage, memory used, active connections, queue depth. Unlike counters (which only increase), gauges reflect the current state, like a thermometer or fuel gauge.

```
  Gauge: active_connections

  t1: 42
  t2: 58  ↑
  t3: 35  ↓
  t4: 71  ↑
  t5: 12  ↓

  Goes up and down, reflects current state
  (not cumulative like a counter)
```

**Examples:** [Prometheus client](https://github.com/prometheus/client_golang), [Micrometer](https://github.com/micrometer-metrics/micrometer), [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification)
