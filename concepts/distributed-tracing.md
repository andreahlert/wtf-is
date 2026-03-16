# WTF is Distributed Tracing?

Following a single request as it travels through multiple services in a distributed system. Each service adds its own "span" to the trace, recording what it did and how long it took. You can then see the entire journey of a request and pinpoint where it got slow.

```
  User request
    │
    ▼
  API Gateway [12ms]
    │
    ├──▶ Auth Service [8ms]
    │
    ├──▶ Order Service [45ms]
    │       │
    │       └──▶ Database [30ms]  ← bottleneck!
    │
    └──▶ Response [total: 95ms]
```

**Examples:** [Jaeger](https://github.com/jaegertracing/jaeger), [Zipkin](https://github.com/openzipkin/zipkin), [OpenTelemetry](https://github.com/open-telemetry/opentelemetry-specification)
