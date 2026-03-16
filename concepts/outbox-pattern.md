# WTF is Outbox Pattern?

Write your domain event to an "outbox" table in the same database transaction as your data change. A separate process reads the outbox and publishes events to the message broker. This guarantees the event is sent if and only if the data was saved. No dual-write problem.

```
  Service                  DB
  ┌──────┐    single tx   ┌──────────────────┐
  │ save │───────────────►│ orders table     │
  │ order│───────────────►│ outbox table     │
  └──────┘                └───────┬──────────┘
                                  │ poll
                           ┌──────▼──────┐
                           │  Publisher  │
                           └──────┬──────┘
                                  ▼
                           ┌─────────────┐
                           │ Kafka/MQ    │
                           └─────────────┘
```

**Examples:** [Debezium](https://github.com/debezium/debezium), [MassTransit Outbox](https://github.com/MassTransit/MassTransit), [CAP](https://github.com/dotnetcore/CAP)
