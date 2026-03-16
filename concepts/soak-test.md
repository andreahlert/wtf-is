# WTF is a Soak Test?

A test that runs your system under a steady, normal load for a long time (hours or days) to find problems that only appear over time. Memory leaks, connection pool exhaustion, and gradual performance degradation are the kinds of bugs soak tests catch.

```
  Load Level
  ▲
  │  ┌─────────────────────────────┐
  │  │  constant normal load       │
  │  │  for hours/days             │
  └──┴─────────────────────────────┴──▶ Time
       Memory leak? Connections exhausted?
```

**Examples:** [k6](https://github.com/grafana/k6), [Locust](https://github.com/locustio/locust), [Gatling](https://github.com/gatling/gatling)
