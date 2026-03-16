# WTF is Dead Letter Queue?

A special queue where messages go when they can't be processed after multiple attempts. Instead of losing the message or retrying forever, it gets moved to the DLQ so you can inspect it later, fix the issue, and reprocess it.

```
  Main Queue          Consumer
  ┌─┬─┬─┬─┐      ┌────────────┐
  │4│3│2│1│─────►│  Process   │──► Success
  └─┴─┴─┴─┘      └─────┬──────┘
                        │ Failed 3x
                        ▼
                  ┌─────────────┐
                  │ Dead Letter │  ◄── inspect & fix
                  │ Queue (DLQ) │
                  └─────────────┘
```

**Examples:** [RabbitMQ](https://github.com/rabbitmq/rabbitmq-server), [Amazon SQS DLQ](https://aws.amazon.com/sqs/), [BullMQ](https://github.com/taskforcesh/bullmq)
