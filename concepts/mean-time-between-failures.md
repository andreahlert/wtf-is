# WTF is Mean Time Between Failures (MTBF)?

The average time between one failure ending and the next one starting. If you had outages on Jan 1, Jan 15, and Feb 1, your MTBF is roughly 15 days. Higher MTBF means your system is more reliable. It measures how often things break, not how fast you fix them.

```
  Failure    OK period    Failure    OK period    Failure
     │                       │                       │
  ───┼───────────────────────┼───────────────────────┼──▶
     │◄──── 15 days ────────▶│◄──── 17 days ────────▶│

  MTBF = (15 + 17) / 2 = 16 days average
  Higher = more reliable
```

**Examples:** [PagerDuty Analytics](https://www.pagerduty.com), [Datadog](https://www.datadoghq.com), [Grafana](https://github.com/grafana/grafana)
