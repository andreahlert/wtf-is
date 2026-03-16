# WTF are Map, Filter, Reduce?

Map transforms each element. Filter keeps elements that match a condition. Reduce combines all elements into a single value. Together they replace most for-loops with clear, composable operations.

```
data = [1, 2, 3, 4, 5]

map(x => x * 2)        → [2, 4, 6, 8, 10]    // transform each
filter(x => x > 3)     → [4, 5]               // keep matching
reduce((sum, x) => sum + x, 0) → 15           // combine all

// Chained:
[1, 2, 3, 4, 5]
  .filter(x => x % 2 == 0)    → [2, 4]
  .map(x => x * 10)           → [20, 40]
  .reduce((s, x) => s + x, 0) → 60
```

**Examples:** [JavaScript Array methods](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array), [Python builtins](https://github.com/python/cpython), [Rust Iterator](https://doc.rust-lang.org/std/iter/trait.Iterator.html)
