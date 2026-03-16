# WTF is an SLO?

Service Level Objective. An internal target for how well your service should perform. Stricter than the SLA and set by your own team: "99.95% of requests under 200ms." You use SLOs to trigger alerts and make decisions before you actually breach the customer-facing SLA.

```
  SLA (external promise):  99.9% uptime
  SLO (internal target):   99.95% uptime  ← stricter
                                │
                                ▼
  Current: 99.93%  ← SLO breached, SLA still OK
                      │
                 Stop deploying new features,
                 focus on reliability
```

**Examples:** [Sloth](https://github.com/slok/sloth), [OpenSLO](https://github.com/OpenSLO/OpenSLO), [Nobl9](https://www.nobl9.com)
