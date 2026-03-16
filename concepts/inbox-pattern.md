# WTF is Inbox Pattern?

The receiving side of the outbox pattern. Store incoming messages in an "inbox" table before processing them. If the same message arrives twice, you detect the duplicate by its ID and skip it. Guarantees exactly-once processing even if the broker delivers duplicates.

```
  Message Broker        Consumer
  ┌──────────┐     ┌──────────────┐
  │          │────►│ inbox table  │
  │  Kafka   │     │ ┌──────────┐ │
  │          │     │ │ msg-123  │ │ already seen → skip
  └──────────┘     │ │ msg-456  │ │ new → process
                   │ └──────────┘ │
                   │     ▼        │
                   │  process()   │
                   └──────────────┘
```

**Examples:** [MassTransit](https://github.com/MassTransit/MassTransit), [Wolverine](https://github.com/JasperFx/wolverine), [CAP](https://github.com/dotnetcore/CAP)
