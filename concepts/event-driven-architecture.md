# WTF is Event-Driven Architecture?

Services communicate by producing and consuming events instead of calling each other directly. When something happens (order placed, user signed up), an event is published and any interested service reacts to it. This decouples producers from consumers.

```
  Producer           Broker           Consumers
  ┌───────┐     ┌────────────┐     ┌──────────┐
  │ Order │────►│            │────►│ Billing  │
  │Service│     │  Event Bus │────►│ Shipping │
  └───────┘     │            │────►│ Email    │
                └────────────┘     └──────────┘
  "OrderPlaced" event flows to all subscribers
```

**Examples:** [Apache Kafka](https://github.com/apache/kafka), [RabbitMQ](https://github.com/rabbitmq/rabbitmq-server), [EventStoreDB](https://github.com/EventStore/EventStore)
