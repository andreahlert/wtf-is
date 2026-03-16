# WTF is Error Budget?

The amount of unreliability you're allowed before you must stop shipping features and focus on stability. If your SLO is 99.9% uptime, your error budget is 0.1% (about 43 minutes/month). Spent your budget? Freeze deployments and fix reliability. Budget remaining? Ship faster.

```
  SLO: 99.9% uptime = 43 min downtime/month

  ┌─── Error Budget ──────────────────┐
  │ Month budget:  43 min             │
  │ Used so far:   28 min  ████████░░ │
  │ Remaining:     15 min             │
  └───────────────────────────────────┘

  Budget remaining → keep shipping features
  Budget exhausted → freeze deploys, fix reliability

  Aligns devs (ship fast) with ops (stay stable)
```

**Examples:** [Google SRE Book](https://sre.google/sre-book/embracing-risk/), [Nobl9](https://www.nobl9.com/), [Datadog SLOs](https://www.datadoghq.com/product/service-level-objectives/)
