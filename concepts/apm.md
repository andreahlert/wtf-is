# WTF is APM?

Application Performance Monitoring. Software that instruments your application to track response times, error rates, throughput, and dependencies automatically. It shows you which endpoints are slow, which database queries take too long, and which external API calls are failing.

```
  Your App (instrumented with APM agent)
       │
       ├──▶ GET /api/orders  avg: 120ms
       │       └── DB query   avg: 95ms  ← slow!
       │
       ├──▶ GET /api/users   avg: 15ms
       │
       └──▶ POST /api/pay    avg: 340ms
               └── Stripe API avg: 300ms ← external

  APM dashboard shows all of this automatically
```

**Examples:** [Datadog APM](https://www.datadoghq.com), [New Relic](https://newrelic.com), [Elastic APM](https://github.com/elastic/apm-server)
