# WTF is Mean Time to Detect (MTTD)?

The average time between when a problem starts and when your team knows about it. If your server went down at 2:00 AM and the alert fired at 2:12 AM, MTTD is 12 minutes. Lower MTTD means better monitoring and alerting.

```
  Problem starts          Alert fires
       │                       │
  ─────┼───────────────────────┼──────▶ time
       │                       │
       │◄─── MTTD: 12 min ───▶│

  How to improve MTTD:
  - Better monitoring coverage
  - Lower alert thresholds
  - Synthetic monitoring (catch it before users do)
```

**Examples:** [PagerDuty Analytics](https://www.pagerduty.com), [Datadog](https://www.datadoghq.com), [Grafana](https://github.com/grafana/grafana)
