# WTF is Reference Counting?

Each object tracks how many references point to it. When the count drops to zero, the object is immediately freed. Simple and predictable, but it can't handle circular references on its own.

```
ref_a ──┐
        ▼
   [ Object ]  refcount = 2
        ▲
ref_b ──┘

ref_a = nil   →  refcount = 1  → still alive
ref_b = nil   →  refcount = 0  → freed!
```

**Examples:** [Swift ARC](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting/), [Python refcount](https://github.com/python/cpython), [Rust Rc](https://doc.rust-lang.org/std/rc/struct.Rc.html)
