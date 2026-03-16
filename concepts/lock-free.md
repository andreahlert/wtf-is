# WTF is a Lock-Free Data Structure?

A lock-free data structure allows multiple threads to operate on it without mutexes. Instead, it uses atomic operations (like compare-and-swap) to ensure correctness. At least one thread always makes progress, so you can't get deadlocked.

```
// Lock-based queue:             // Lock-free queue:
lock()                           loop {
  node.next = head                 old = atomic_load(head)
  head = node                      node.next = old
unlock()                           if CAS(head, old, node):
// if thread dies holding            break  // success
// lock → deadlock                 // else retry
                                 }
// CAS = Compare-And-Swap: only writes if value hasn't changed
```

**Examples:** [crossbeam (Rust)](https://github.com/crossbeam-rs/crossbeam), [Java ConcurrentLinkedQueue](https://github.com/openjdk/jdk), [liblfds](https://github.com/liblfds/liblfds)
