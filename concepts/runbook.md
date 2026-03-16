# WTF is a Runbook?

A step-by-step document that tells the on-call engineer exactly what to do when a specific alert fires. "If database CPU > 90%, do these 5 things in this order." Runbooks turn tribal knowledge into documented procedures so anyone on the team can handle an incident.

```
  Alert: "DB CPU > 90%"
       │
       ▼
  Runbook:
  1. Check slow query log
  2. Identify long-running queries
  3. Kill query if safe: pg_terminate(pid)
  4. Check if replica is behind
  5. Escalate if CPU doesn't drop in 10 min
```

**Examples:** [Rundeck](https://github.com/rundeck/rundeck), [Grafana OnCall](https://github.com/grafana/oncall), [PagerDuty Runbooks](https://www.pagerduty.com)
