# WTF is Alerting?

Automatically notifying humans when metrics cross a threshold. "If error rate > 5% for 5 minutes, send a page." Good alerts are actionable (you can do something about it), urgent (it needs attention now), and not noisy (no alert fatigue). Bad alerts wake you up for nothing.

```
  Metric: error_rate

  ───────── threshold: 5% ─────────
                          ╱╲
  ──────────────────────╱──╲──────
                       ╱    ╲
  Alert fires here ───╱      ╲── Alert resolves

  → Slack notification
  → PagerDuty page
  → On-call engineer wakes up
```

**Examples:** [Alertmanager](https://github.com/prometheus/alertmanager), [Grafana Alerting](https://github.com/grafana/grafana), [PagerDuty](https://www.pagerduty.com)
