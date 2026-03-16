# WTF is Backpressure?

Backpressure is a mechanism where a slow consumer tells a fast producer to slow down. Without it, a fast data source overwhelms a slow processor, causing memory to balloon or data to be dropped.

```
Without backpressure:
Producer: ████████████████  → 1000 msg/s
Consumer: ██░░░░░░░░░░░░░░  →  100 msg/s
Buffer:   [explodes] 💥  OOM

With backpressure:
Producer: ██░░██░░██░░██░░  →  100 msg/s (slowed down)
Consumer: ██░░██░░██░░██░░  →  100 msg/s
Buffer:   [stable]
```

**Examples:** [RxJS](https://github.com/ReactiveX/rxjs), [Project Reactor](https://github.com/reactor/reactor-core), [Akka Streams](https://github.com/akka/akka)
