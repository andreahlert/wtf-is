# WTF is On-Call?

A rotation where engineers take turns being the person who responds to production alerts outside business hours. When the pager goes off at 3 AM, the on-call engineer investigates and fixes the issue. Teams typically rotate weekly to spread the burden.

```
  On-call rotation:

  Week 1: Alice  ←── pager
  Week 2: Bob    ←── pager
  Week 3: Carol  ←── pager
  Week 4: Alice  (repeat)

  3 AM alert fires → current on-call gets paged
  → acknowledge → investigate → resolve
  → (escalate if needed)
```

**Examples:** [PagerDuty](https://www.pagerduty.com), [Opsgenie](https://www.atlassian.com/software/opsgenie), [Grafana OnCall](https://github.com/grafana/oncall)
