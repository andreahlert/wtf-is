# WTF is a Time Series Database?

A time series database is optimized for data points indexed by time: metrics, sensor readings, stock prices, logs. It's built for high write throughput of append-only data and fast range queries like "give me CPU usage for the last 24 hours." It also handles automatic data retention and downsampling.

```
  ┌────────────────────┬───────┬────────┐
  │ timestamp          │ host  │ cpu_pct│
  ├────────────────────┼───────┼────────┤
  │ 2024-01-01 00:00   │ web-1 │  45.2  │
  │ 2024-01-01 00:01   │ web-1 │  47.8  │  ← append only
  │ 2024-01-01 00:02   │ web-1 │  42.1  │  ← time-ordered
  │ ...millions more   │       │        │
  └────────────────────┴───────┴────────┘
```

**Examples:** [InfluxDB](https://github.com/influxdata/influxdb), [TimescaleDB](https://github.com/timescale/timescaledb), [Prometheus](https://github.com/prometheus/prometheus)
