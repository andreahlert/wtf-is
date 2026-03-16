# WTF is AMQP?

AMQP (Advanced Message Queuing Protocol) is a messaging protocol for reliable, async communication between services. Unlike MQTT (lightweight IoT), AMQP is built for enterprise messaging with features like routing, queues, exchanges, acknowledgments, and transactions. A producer sends messages to an exchange, which routes them to queues based on rules, and consumers pull from queues.

```
Producer            Exchange            Queue          Consumer
  |                    |                  |               |
  |-- publish -------->|                  |               |
  |   routing_key:     |-- route -------->|               |
  |   "order.created"  |  (binding rules) |-- deliver --->|
  |                    |                  |               |

Exchange types:
  direct:  exact routing key match
  topic:   wildcard patterns (order.*)
  fanout:  broadcast to all queues
  headers: match on message headers
```

**Examples:** [RabbitMQ](https://github.com/rabbitmq/rabbitmq-server), [Apache Qpid](https://github.com/apache/qpid-broker-j), [lavinmq](https://github.com/cloudamqp/lavinmq)
