# WTF is AsyncAPI?

Like OpenAPI but for event-driven and message-based APIs. Describes your channels, messages, schemas, and protocols (Kafka, AMQP, WebSocket, etc.) in a single spec file. Generate docs, code, and tests from it, just like you would with OpenAPI for REST.

```
  asyncapi.yaml
  ┌─────────────────────────────┐
  │ channels:                   │
  │   user/signedup:            │──► generate docs
  │     subscribe:              │──► generate code
  │       message:              │──► validate msgs
  │         payload:            │
  │           type: object      │
  │           properties:       │
  │             userId: ...     │
  └─────────────────────────────┘
```

**Examples:** [AsyncAPI Generator](https://github.com/asyncapi/generator), [AsyncAPI Studio](https://github.com/asyncapi/studio), [AsyncAPI Spec](https://github.com/asyncapi/spec)
