# WTF is OpenTelemetry?

A vendor-neutral open standard for collecting logs, metrics, and traces from your applications. You instrument your code once with OpenTelemetry, then send the data to any backend (Jaeger, Prometheus, Datadog, whatever). No vendor lock-in. Often abbreviated as OTel.

```
  Your App
    │
    ├── OTel SDK (instrument once)
    │
    ▼
  OTel Collector
    │
    ├──▶ Jaeger    (traces)
    ├──▶ Prometheus (metrics)
    └──▶ Loki      (logs)

  Switch backends without changing app code
```

**Examples:** [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification), [OTel Collector](https://github.com/open-telemetry/opentelemetry-collector), [OTel Python](https://github.com/open-telemetry/opentelemetry-python)
