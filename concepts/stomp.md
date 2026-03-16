# WTF is STOMP?

STOMP (Simple Text Oriented Messaging Protocol) is a text-based messaging protocol that's deliberately simple. It uses plain-text frames with commands like CONNECT, SEND, SUBSCRIBE, and MESSAGE. It's the HTTP of messaging: easy to debug with a text editor, works over WebSockets for browser clients, and supported by most message brokers.

```
Client                          Broker
  |                                |
  |-- CONNECT ------------------>  |
  |   login: guest                |
  |                                |
  |<-- CONNECTED ----------------- |
  |                                |
  |-- SUBSCRIBE ---------------->  |
  |   destination: /queue/orders  |
  |                                |
  |-- SEND --------------------->  |
  |   destination: /queue/orders  |
  |   content-type: text/plain    |
  |                                |
  |   {"orderId": 123}            |
  |                                |
  |<-- MESSAGE ------------------- |
  |   {"orderId": 123}            |
```

**Examples:** [RabbitMQ STOMP](https://github.com/rabbitmq/rabbitmq-server), [ActiveMQ](https://github.com/apache/activemq), [Spring WebSocket](https://github.com/spring-projects/spring-framework)
