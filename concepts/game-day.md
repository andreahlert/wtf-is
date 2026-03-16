# WTF is Game Day?

A scheduled event where teams simulate failures and practice their incident response. Like a fire drill for your infrastructure. You inject real (or simulated) failures during business hours with everyone ready to respond. The goal is to find gaps in runbooks, tooling, and team readiness.

```
  Game Day Schedule:
  ┌───────────────────────────────────┐
  │ 10:00  Briefing & hypothesis     │
  │ 10:30  Inject failure            │
  │        (kill database primary)   │
  │ 10:31  Team responds             │
  │ 11:00  Assess & recover          │
  │ 11:30  Debrief & document        │
  │        lessons learned           │
  └───────────────────────────────────┘
```

**Examples:** [Chaos Monkey](https://github.com/Netflix/chaosmonkey), [Gremlin](https://www.gremlin.com/), [AWS Fault Injection Service](https://aws.amazon.com/fis/)
