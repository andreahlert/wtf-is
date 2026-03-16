# WTF is an Atomic Operation?

An atomic operation completes in a single indivisible step. No other thread can see it half-done. The CPU guarantees it, so you don't need a mutex for simple operations like incrementing a counter or swapping a value.

```
// Non-atomic (3 steps, can be interrupted):
read  counter → 5
add   5 + 1
write counter → 6    // another thread might sneak in

// Atomic (1 indivisible step):
atomic_add(counter, 1)   // read + add + write as ONE operation
                          // no thread can see it mid-update

// Common atomic ops:
compare_and_swap(addr, old, new)
fetch_and_add(addr, val)
atomic_load / atomic_store
```

**Examples:** [Go sync/atomic](https://pkg.go.dev/sync/atomic), [Rust std::sync::atomic](https://doc.rust-lang.org/std/sync/atomic/), [Java AtomicInteger](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/atomic/AtomicInteger.html)
