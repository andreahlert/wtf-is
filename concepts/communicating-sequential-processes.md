# WTF is CSP (Communicating Sequential Processes)?

A concurrency model where independent processes communicate by sending messages through channels, not by sharing memory. Each process runs its own logic and passes data to other processes via typed channels. If a channel isn't ready, the sender or receiver blocks until both sides are ready.

```
Shared Memory (traditional):           CSP (channels):
  [Thread A] ──→ [shared var] ←── [Thread B]   [Process A] ──→ [channel] ──→ [Process B]
                    │                                              │
              lock/unlock needed                          no locks, just send/receive
              race conditions                             data flows, no sharing
```

**Examples:** [Go](https://go.dev/) (goroutines + channels), [Clojure core.async](https://github.com/clojure/core.async), [Crystal](https://github.com/crystal-lang/crystal)
