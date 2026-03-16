# WTF is PagerDuty?

An incident management platform that receives alerts from your monitoring tools and pages the right on-call engineer via phone, SMS, or push notification. It manages on-call schedules, escalation policies, and tracks incident timelines. When your monitoring says "something is broken," PagerDuty makes sure a human knows.

```
  Prometheus ──┐
  Datadog    ──┼──▶ PagerDuty ──▶ On-call engineer
  Grafana    ──┘       │              │
                       │         Phone/SMS/Push
                       ▼
                  No response in 5 min?
                  → Escalate to next person
```

**Examples:** [PagerDuty](https://www.pagerduty.com), [Opsgenie](https://www.atlassian.com/software/opsgenie), [Grafana OnCall](https://github.com/grafana/oncall)
