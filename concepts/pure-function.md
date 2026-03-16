# WTF is a Pure Function?

A pure function always returns the same output for the same input and has no side effects. It doesn't read or modify anything outside its scope. This makes it trivially testable, cacheable, and safe to run in parallel.

```
// Pure: depends only on inputs
fn add(a, b) -> a + b
add(2, 3) → always 5

// Impure: reads external state
fn get_age() -> now() - birthday    // now() changes every call

// Impure: has side effects
fn save(user) -> db.insert(user)    // modifies the database
```

**Examples:** [Ramda](https://github.com/ramda/ramda), [Haskell](https://github.com/ghc/ghc), [Redux reducers](https://github.com/reduxjs/redux)
