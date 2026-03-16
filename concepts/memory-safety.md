# WTF is Memory Safety?

Memory safety means a program can't access memory it shouldn't: no reading freed memory, no writing past buffer boundaries, no dangling pointers. Languages achieve this through garbage collection, ownership systems, or bounds checking.

```
Unsafe                          Safe
──────                          ────
buffer[100] on a 10-byte buf    runtime error or compile error
use ptr after free               compiler prevents it
write to someone else's memory   OS kills the process
```

**Examples:** [Rust](https://github.com/rust-lang/rust), [Go](https://github.com/golang/go), [AddressSanitizer](https://github.com/google/sanitizers)
