# WTF is Backpressure?

When a consumer can't keep up with a producer, backpressure is the mechanism to slow down the producer or buffer the excess. Without it, the system either crashes from memory exhaustion or starts dropping data. It's the "slow down, I'm full" signal.

```
  Producer (fast)     Buffer      Consumer (slow)
  ┌──────┐        ┌─────────┐     ┌──────┐
  │██████│───────►│█████    │────►│██    │
  │ 100/s│        │ filling! │     │ 10/s │
  └──────┘        └────┬────┘     └──────┘
                       │
              "slow down!" signal
              ◄────────┘
```

**Examples:** [RxJava](https://github.com/ReactiveX/RxJava), [Project Reactor](https://github.com/reactor/reactor-core), [Akka Streams](https://github.com/akka/akka)
