# WTF is Bulkhead Pattern?

Isolate components so a failure in one doesn't sink the whole ship. Like bulkheads in a ship that contain flooding to one compartment. In practice: separate thread pools, connection pools, or even processes per service so one overloaded component can't starve the others.

```
  ┌─── Ship (Your App) ──────────────────┐
  │                                       │
  │ ┌─Bulkhead A──┐  ┌─Bulkhead B──┐    │
  │ │ Payment     │  │ Search      │    │
  │ │ pool: 10    │  │ pool: 20    │    │
  │ │ ██████░░░░  │  │ █░░░░░░░░░  │    │
  │ └─────────────┘  └─────────────┘    │
  │  A is stressed     B is fine         │
  └───────────────────────────────────────┘
```

**Examples:** [resilience4j](https://github.com/resilience4j/resilience4j), [Hystrix](https://github.com/Netflix/Hystrix), [Polly](https://github.com/App-vNext/Polly)
