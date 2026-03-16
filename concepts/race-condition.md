# WTF is a Race Condition?

A race condition happens when two threads access shared data at the same time and the result depends on which one gets there first. The program works sometimes and breaks sometimes, making these bugs notoriously hard to reproduce.

```
// Bank account: $100. Two threads withdraw $80.
Thread A: read balance  → 100
Thread B: read balance  → 100     // both see 100
Thread A: write balance → 20      // 100 - 80
Thread B: write balance → 20      // 100 - 80 (should be -60!)
// Withdrew $160 from a $100 account

// Fix: use a mutex
lock()
read → withdraw → write
unlock()
```

**Examples:** [Go race detector](https://go.dev/doc/articles/race_detector), [ThreadSanitizer](https://github.com/google/sanitizers), [Rust Send/Sync](https://doc.rust-lang.org/nomicon/send-and-sync.html)
