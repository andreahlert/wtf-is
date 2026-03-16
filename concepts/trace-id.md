# WTF is a Trace ID?

A unique identifier (usually a 128-bit hex string) assigned to a request when it enters your system. Every service that handles that request uses the same trace ID, making it possible to find all logs, spans, and events related to a single user action.

```
  Request enters system
       │
       ▼
  trace-id: 4bf92f3577b34da6a3ce929d0e0e4736
       │
       ├──▶ Service A  (logs with trace-id)
       ├──▶ Service B  (logs with trace-id)
       └──▶ Service C  (logs with trace-id)

  Search "4bf92f..." → see everything about this request
```

**Examples:** [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification), [Jaeger](https://github.com/jaegertracing/jaeger), [Zipkin](https://github.com/openzipkin/zipkin)
