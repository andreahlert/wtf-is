# WTF is Baggage?

Key-value pairs that travel with a trace across service boundaries. Unlike span attributes (which stay local to one span), baggage is propagated to every downstream service. Useful for passing context like user ID, tenant ID, or feature flags through the entire request chain.

```
  Service A
    baggage: {userId: "42", region: "eu"}
       │
       ▼ (baggage propagated via headers)
  Service B
    baggage: {userId: "42", region: "eu"}
       │
       ▼
  Service C
    baggage: {userId: "42", region: "eu"}
    → can route, log, or filter using these values
```

**Examples:** [OpenTelemetry Baggage](https://github.com/open-telemetry/opentelemetry-specification), [W3C Baggage](https://www.w3.org/TR/baggage/), [Jaeger](https://github.com/jaegertracing/jaeger)
