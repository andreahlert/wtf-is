# WTF is Concurrency vs Parallelism?

Concurrency is about dealing with many things at once (structure). Parallelism is about doing many things at once (execution). A single-core machine can be concurrent but not parallel. You need multiple cores for true parallelism.

```
Concurrency (1 cook, 2 dishes):     Parallelism (2 cooks, 2 dishes):
┌─────────────────────────┐          ┌─────────────────────────┐
│ Cook A: chop → stir →   │          │ Cook A: chop → stir → ✓│
│         chop → stir → ✓ │          │ Cook B: chop → stir → ✓│
│ (switching between both) │          │ (both at same time)     │
└─────────────────────────┘          └─────────────────────────┘
```

**Examples:** [Go (concurrent + parallel)](https://github.com/golang/go), [Node.js (concurrent, single-thread)](https://github.com/nodejs/node), [Rayon (parallel)](https://github.com/rayon-rs/rayon)
