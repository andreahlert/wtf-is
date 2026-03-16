# WTF is Jaeger?

An open-source distributed tracing platform, originally built at Uber. It collects, stores, and visualizes traces from your microservices. You can see the entire journey of a request across services, find bottlenecks, and understand dependencies between services.

```
  Services send traces ──▶ Jaeger Collector
                                │
                           ┌────▼────┐
                           │ Storage │ (Elasticsearch,
                           │         │  Cassandra, etc)
                           └────┬────┘
                                │
                           ┌────▼────┐
                           │ Jaeger  │
                           │   UI    │ ← explore traces
                           └─────────┘
```

**Examples:** [Jaeger](https://github.com/jaegertracing/jaeger), [Jaeger Client Go](https://github.com/jaegertracing/jaeger-client-go), [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification)
