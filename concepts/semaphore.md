# WTF is a Semaphore?

A semaphore is a counter that controls access to a shared resource. Unlike a mutex (which allows exactly one), a semaphore allows up to N threads at once. Useful for rate limiting, connection pools, or limiting parallel work.

```
Semaphore(3)  ← allows 3 concurrent accesses

Thread A: acquire()  → count=2, enters ✓
Thread B: acquire()  → count=1, enters ✓
Thread C: acquire()  → count=0, enters ✓
Thread D: acquire()  → count=0, WAITS ⏳
Thread A: release()  → count=1
Thread D:            → count=0, enters ✓
```

**Examples:** [Go semaphore](https://pkg.go.dev/golang.org/x/sync/semaphore), [Java Semaphore](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/Semaphore.html), [Python asyncio.Semaphore](https://github.com/python/cpython)
