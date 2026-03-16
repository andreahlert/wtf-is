# WTF is Currying?

Currying transforms a function that takes multiple arguments into a chain of functions that each take one argument. This lets you partially apply arguments and create specialized versions of general functions.

```
// Normal function
fn add(a, b) → a + b
add(2, 3) → 5

// Curried version
fn add(a) → fn(b) → a + b
add(2)(3) → 5

// Partial application
add5 = add(5)
add5(3)  → 8
add5(10) → 15
```

**Examples:** [Ramda](https://github.com/ramda/ramda), [Lodash/fp](https://github.com/lodash/lodash), [Haskell](https://github.com/ghc/ghc)
