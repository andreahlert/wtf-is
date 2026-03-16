# WTF is Token Bucket?

A rate limiting algorithm. A bucket fills with tokens at a steady rate. Each request costs one token. If the bucket is empty, the request is rejected. The bucket has a max capacity, so tokens don't accumulate forever. Allows short bursts up to bucket size.

```
  Tokens added: 10/sec    Bucket capacity: 50

  ┌──────────────────┐
  │ ●●●●●●●●●●●●●●● │  35 tokens available
  │ ●●●●●●●●●●●●●●● │
  │ ●●●●●            │
  │                   │
  └──────────────────┘

  Request arrives → take 1 token → allow
  Bucket empty   → reject (429 Too Many Requests)
  Burst of 50    → allowed (empties bucket)
```

**Examples:** [Guava RateLimiter](https://github.com/google/guava), [resilience4j](https://github.com/resilience4j/resilience4j), [golang.org/x/time/rate](https://pkg.go.dev/golang.org/x/time/rate)
