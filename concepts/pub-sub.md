# WTF is Pub/Sub?

A messaging pattern where publishers send messages to a topic without knowing who will receive them. Subscribers listen to topics they care about. One message can reach many subscribers. The publisher and subscribers are completely decoupled.

```
  Publishers          Topic         Subscribers
  ┌───────┐      ┌───────────┐     ┌──────┐
  │ Pub A │─────►│           │────►│Sub 1 │
  └───────┘      │  "orders" │────►│Sub 2 │
  ┌───────┐      │           │────►│Sub 3 │
  │ Pub B │─────►└───────────┘     └──────┘
  └───────┘       1 msg → N copies
```

**Examples:** [Apache Kafka](https://github.com/apache/kafka), [Google Cloud Pub/Sub](https://cloud.google.com/pubsub), [NATS](https://github.com/nats-io/nats-server)
