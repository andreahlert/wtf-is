# WTF is NATS?

NATS is a high-performance messaging system designed for cloud-native applications. It supports publish-subscribe, request-reply, and queue groups (load-balanced consumers). It's extremely fast, has a tiny binary, and uses a simple text protocol. JetStream adds persistence, exactly-once delivery, and stream processing on top.

```
Pub/Sub:
  Publisher --> NATS --> Subscriber A
                    --> Subscriber B

Request/Reply:
  Client --request--> NATS --> Service
  Client <--reply---- NATS <-- Service

Queue Group (load balancing):
  Publisher --> NATS --> Worker A  (gets some messages)
                    --> Worker B  (gets the rest)
                    (each message delivered to ONE worker)

  Pub --> subject: "orders.new"
  Sub A: subscribe("orders.new", queue: "workers")
  Sub B: subscribe("orders.new", queue: "workers")
```

**Examples:** [NATS Server](https://github.com/nats-io/nats-server), [nats.go](https://github.com/nats-io/nats.go), [nats.py](https://github.com/nats-io/nats.py)
