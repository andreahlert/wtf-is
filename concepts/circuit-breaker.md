# WTF is a Circuit Breaker?

A pattern that prevents your app from repeatedly calling a service that's failing. After a threshold of failures, the circuit "opens" and calls fail immediately instead of waiting and timing out. After a cooldown period, it lets a few requests through to check if the service recovered.

```
State machine:

  [CLOSED] ──── failures exceed threshold ───→ [OPEN]
     ↑                                            │
     │                                      timer expires
     │                                            │
     └── success ─── [HALF-OPEN] ←────────────────┘
                      (test with a few requests)
                           │
                        failure → back to [OPEN]
```

**Examples:** [Resilience4j](https://github.com/resilience4j/resilience4j) (Java), [Polly](https://github.com/App-vNext/Polly) (.NET), [Hystrix](https://github.com/Netflix/Hystrix) (deprecated but influential)
