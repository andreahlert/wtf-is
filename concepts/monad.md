# WTF is a Monad?

A monad is a design pattern for chaining operations on wrapped values. It's a type with a `flatMap` (or `bind`) method that lets you sequence computations while the monad handles the plumbing (nulls, errors, async, etc.).

```
// Without monad: manual null checks
user = getUser(id)
if user != null:
    address = getAddress(user)
    if address != null:
        city = getCity(address)

// With monad: chain with flatMap
city = getUser(id)
    .flatMap(u => getAddress(u))
    .flatMap(a => getCity(a))
    // None propagates automatically
```

**Examples:** [Effect-TS](https://github.com/Effect-TS/effect), [Haskell](https://github.com/ghc/ghc), [Scala Cats](https://github.com/typelevel/cats)
