# WTF is Datadog?

A commercial SaaS platform for monitoring, tracing, and log management. You install an agent on your servers, and it collects metrics, traces, and logs, sending them to Datadog's cloud where you get dashboards, alerts, and APM out of the box. Popular but expensive at scale.

```
  Your Infrastructure
  ┌──────────────────────┐
  │ Server 1 [DD Agent]  │──┐
  │ Server 2 [DD Agent]  │──┼──▶ Datadog Cloud
  │ Server 3 [DD Agent]  │──┘        │
  └──────────────────────┘     ┌─────┴──────┐
                               │ Dashboards │
                               │ Alerts     │
                               │ APM        │
                               │ Log Search │
                               └────────────┘
```

**Examples:** [Datadog](https://www.datadoghq.com), [Datadog Agent](https://github.com/DataDog/datadog-agent), [dd-trace-py](https://github.com/DataDog/dd-trace-py)
