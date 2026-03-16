# WTF is Blameless Postmortem?

A meeting after an incident that focuses on what happened and why, not who screwed up. The idea: people make better decisions when they're not afraid of punishment. Document the timeline, contributing factors, and action items. Improve the system, not blame the human.

```
  Blameless Postmortem Template:
  ┌──────────────────────────────────┐
  │ Incident: API outage 2024-03-15 │
  │ Duration: 47 minutes             │
  │                                  │
  │ Timeline:                        │
  │  10:03 Deploy triggered          │
  │  10:05 Errors spike              │
  │  10:12 Alert fires               │
  │  10:50 Rollback complete         │
  │                                  │
  │ Action items:                    │
  │  - Add canary deployment         │
  │  - Improve alert latency         │
  └──────────────────────────────────┘
```

**Examples:** [PagerDuty Postmortem Guide](https://postmortems.pagerduty.com/), [Jeli](https://www.jeli.io/), [Incident.io](https://incident.io/)
