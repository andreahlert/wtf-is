# WTF is Message Queue?

A buffer that sits between a sender and a receiver. The sender drops a message in the queue and moves on. The receiver picks it up when ready. If the receiver is slow or down, messages wait in the queue instead of being lost.

```
  Producer         Queue            Consumer
  ┌──────┐    ┌─┬─┬─┬─┬─┐     ┌──────────┐
  │ App  │───►│5│4│3│2│1│────►│ Worker   │
  └──────┘    └─┴─┴─┴─┴─┘     └──────────┘
                 FIFO order
           (each msg delivered once)
```

**Examples:** [RabbitMQ](https://github.com/rabbitmq/rabbitmq-server), [Apache ActiveMQ](https://github.com/apache/activemq), [BullMQ](https://github.com/taskforcesh/bullmq)
