# WTF is Sliding Window?

A rate limiting algorithm that counts requests in a moving time window rather than fixed intervals. Avoids the boundary problem where someone sends 100 requests at 11:59 and 100 more at 12:01, bypassing a "100 per hour" limit in fixed windows.

```
  Fixed window problem:
  |---hour 1---|---hour 2---|
            99 + 99 = 198 requests in 2 min!

  Sliding window:
  ──────[====60 min window====]──────►
         count = 47         time
         ──────[====60 min window====]──►
                count = 52

  Window moves with current time, no boundary exploit
```

**Examples:** [Redis Rate Limiter](https://github.com/redis/redis), [rate-limiter-flexible](https://github.com/animir/node-rate-limiter-flexible), [Envoy](https://github.com/envoyproxy/envoy)
