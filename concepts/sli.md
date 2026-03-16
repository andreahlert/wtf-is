# WTF is an SLI?

Service Level Indicator. The actual measured number that tells you if you're meeting your SLO. It's the metric itself: "percentage of requests completing in under 200ms" or "ratio of successful requests to total requests." SLIs are what you put on dashboards.

```
  SLI (measurement):  successful requests / total requests
                      = 9,950 / 10,000
                      = 99.5%

  SLO (target):       99.9%

  99.5% < 99.9%  →  not meeting SLO!

  SLI feeds into SLO feeds into SLA:
  SLI (metric) → SLO (target) → SLA (contract)
```

**Examples:** [Sloth](https://github.com/slok/sloth), [Prometheus](https://github.com/prometheus/prometheus), [OpenSLO](https://github.com/OpenSLO/OpenSLO)
