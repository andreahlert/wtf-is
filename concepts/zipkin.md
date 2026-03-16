# WTF is Zipkin?

An open-source distributed tracing system, originally built at Twitter (inspired by Google Dapper). Services report timing data to Zipkin, which stores and visualizes it. Simpler than Jaeger, and one of the first widely adopted tracing tools.

```
  Services ──▶ Zipkin Collector
                    │
               ┌────▼────┐
               │ Storage  │ (MySQL, Cassandra,
               │          │  Elasticsearch)
               └────┬─────┘
                    │
               ┌────▼────┐
               │ Zipkin   │
               │   UI     │ ← view traces
               └──────────┘
```

**Examples:** [Zipkin](https://github.com/openzipkin/zipkin), [Brave](https://github.com/openzipkin/brave), [Zipkin JS](https://github.com/openzipkin/zipkin-js)
