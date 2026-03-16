# WTF is a Span?

A single unit of work within a distributed trace. Each span has a name, start time, duration, and a parent span. A trace is a tree of spans. The root span is the entry point, and child spans represent sub-operations like database queries or API calls.

```
  Trace: handle-order
  │
  ├── [span] API Gateway         0ms ──────── 95ms
  │   ├── [span] Auth Service    5ms ── 13ms
  │   ├── [span] Order Service   15ms ─────── 60ms
  │   │   └── [span] DB Query    20ms ── 50ms
  │   └── [span] Send Response   62ms ─ 95ms
```

**Examples:** [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification), [Jaeger](https://github.com/jaegertracing/jaeger), [Zipkin](https://github.com/openzipkin/zipkin)
