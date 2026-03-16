# WTF is a Higher-Order Function?

A higher-order function either takes a function as an argument or returns a function as its result (or both). `map`, `filter`, and `sort` are the classic examples: you pass them a function that tells them what to do with each element.

```
// Takes a function as argument
[1, 2, 3].map(x => x * 2)        → [2, 4, 6]
[1, 2, 3].filter(x => x > 1)     → [2, 3]

// Returns a function
fn multiplier(factor):
    return (x) => x * factor

double = multiplier(2)
double(5)  → 10
```

**Examples:** [Lodash](https://github.com/lodash/lodash), [Ramda](https://github.com/ramda/ramda), [Python functools](https://github.com/python/cpython/blob/main/Lib/functools.py)
