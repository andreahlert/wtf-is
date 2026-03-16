# WTF is Lazy Evaluation?

Lazy evaluation means values are only computed when they're actually needed. If you never use a result, it never gets calculated. This lets you work with infinite sequences and avoid wasting computation.

```
// Eager: computes everything upfront
all_squares = [x*x for x in range(1_000_000)]  // allocates 1M items
first_five = all_squares[:5]                     // only needed 5

// Lazy: computes on demand
squares = (x*x for x in range(1_000_000))       // computes nothing yet
first_five = take(5, squares)                    // only computes 5

// Infinite sequences become possible:
naturals = lazy_range(1, infinity)
take(3, naturals)  → [1, 2, 3]
```

**Examples:** [Haskell](https://github.com/ghc/ghc), [Python generators](https://github.com/python/cpython), [Rust Iterator](https://doc.rust-lang.org/std/iter/trait.Iterator.html)
