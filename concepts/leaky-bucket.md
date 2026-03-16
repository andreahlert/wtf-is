# WTF is Leaky Bucket?

A rate limiting algorithm. Requests fill a bucket, and it "leaks" at a constant rate (processes requests at a fixed rate). If the bucket overflows, excess requests are dropped. Unlike token bucket, output rate is always smooth with no bursts.

```
  Requests in (variable rate)
       │ │ │ │ │
       ▼ ▼ ▼ ▼ ▼
  ┌─────────────────┐
  │ ████████████    │  queue filling up
  │ ████████        │
  └───────┬─────────┘
          │ leaks at fixed rate
          ▼
    ● ─ ● ─ ● ─ ● ─ ●   (smooth, constant output)

  Bucket full? → overflow → request rejected
```

**Examples:** [nginx rate limiting](https://github.com/nginx/nginx), [Kong Rate Limiting](https://github.com/Kong/kong), [Envoy](https://github.com/envoyproxy/envoy)
