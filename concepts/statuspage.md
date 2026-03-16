# WTF is a Status Page?

A public webpage that shows the current health of your services. Users check it when they think something is broken instead of flooding your support team. It shows which components are operational, degraded, or down, and provides incident updates with a timeline.

```
  status.yourcompany.com

  ┌──────────────────────────────────┐
  │ API           ● Operational      │
  │ Dashboard     ● Operational      │
  │ Payments      ◐ Degraded         │
  │ Email Service ○ Major Outage     │
  ├──────────────────────────────────┤
  │ Incident: Payment delays         │
  │ 14:30 - Investigating            │
  │ 14:45 - Identified root cause    │
  │ 15:10 - Fix deployed             │
  └──────────────────────────────────┘
```

**Examples:** [Atlassian Statuspage](https://www.atlassian.com/software/statuspage), [Cachet](https://github.com/cachethq/cachet), [Upptime](https://github.com/upptime/upptime)
