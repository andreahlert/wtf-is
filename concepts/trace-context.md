# WTF is Trace Context?

A W3C standard for propagating tracing information across service boundaries via HTTP headers. When Service A calls Service B, it passes along a `traceparent` header containing the trace ID and parent span ID, so the entire request chain can be stitched together.

```
  Service A ──HTTP──▶ Service B ──HTTP──▶ Service C

  Header: traceparent: 00-<trace-id>-<span-id>-01

  All three services share the same trace-id
  → one unified trace across all services
```

**Examples:** [W3C Trace Context](https://www.w3.org/TR/trace-context/), [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification), [Jaeger](https://github.com/jaegertracing/jaeger)
