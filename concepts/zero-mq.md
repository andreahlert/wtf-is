# WTF is ZeroMQ?

ZeroMQ is a messaging library (not a broker) that gives you socket-like APIs with built-in patterns for distributed messaging. It handles connection management, buffering, routing, and reconnection automatically. You embed it in your app, no separate server needed. It supports patterns like pub-sub, request-reply, push-pull, and dealer-router.

```
Traditional broker:              ZeroMQ (brokerless):

  App A --> Broker --> App B       App A <-----> App B
  (needs a running broker)        (direct, library-level)

Common patterns:

  REQ-REP:    Client <--> Server     (request-reply)
  PUB-SUB:    Publisher --> Subscribers  (broadcast)
  PUSH-PULL:  Producer --> Workers   (pipeline/fan-out)
  PAIR:       Thread A <--> Thread B (1-to-1)

  sender = zmq.socket(zmq.PUSH)
  sender.connect("tcp://worker:5555")
  sender.send(b"task")
```

**Examples:** [libzmq](https://github.com/zeromq/libzmq), [pyzmq](https://github.com/zeromq/pyzmq), [jeromq (Java)](https://github.com/zeromq/jeromq)
