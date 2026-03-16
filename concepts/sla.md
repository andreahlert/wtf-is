# WTF is an SLA?

Service Level Agreement. A contract between a service provider and customer that defines the guaranteed level of service: "99.9% uptime" or "response within 200ms." If you break the SLA, there are consequences, usually financial credits to the customer.

```
  SLA: 99.9% uptime per month

  Total minutes in month:  43,200
  Allowed downtime:           43.2 min
  Actual downtime:            60 min  ← SLA breached!
                                │
                         Customer gets credits
```

**Examples:** [AWS SLA](https://aws.amazon.com/legal/service-level-agreements/), [Google Cloud SLA](https://cloud.google.com/terms/sla), [Azure SLA](https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services)
