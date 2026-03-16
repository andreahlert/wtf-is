# WTF is Mean Time to Resolve (MTTR)?

The average time from when a problem is detected to when it's fully fixed. If the alert fired at 2:12 AM and the service was healthy again at 3:00 AM, MTTR is 48 minutes. The most common reliability metric teams track.

```
  Alert fires             Resolved
       │                       │
  ─────┼───────────────────────┼──────▶ time
       │                       │
       │◄─── MTTR: 48 min ───▶│

  MTTR = detect + diagnose + fix + verify
  Improve with: runbooks, automation, rollbacks
```

**Examples:** [PagerDuty Analytics](https://www.pagerduty.com), [incident.io](https://incident.io), [Jira Service Management](https://www.atlassian.com/software/jira/service-management)
