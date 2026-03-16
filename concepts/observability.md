# WTF is Observability?

The ability to understand what's happening inside your system by looking at what it outputs. Logs, metrics, and traces are the raw signals. Observability means you can ask arbitrary questions about your production system without deploying new code to answer them.

```
  Your System
  ┌──────────────────┐
  │                  │──▶ Logs     (what happened)
  │   black box?     │──▶ Metrics  (how much/many)
  │   not anymore    │──▶ Traces   (where/how long)
  │                  │
  └──────────────────┘
         │
    "Why is it slow for users in Brazil?"
    → answer without deploying anything
```

**Examples:** [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification), [Grafana](https://github.com/grafana/grafana), [Datadog](https://www.datadoghq.com)
