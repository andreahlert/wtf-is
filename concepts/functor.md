# WTF is a Functor?

A functor is any type you can `map` over. It wraps a value and lets you apply a function to the value inside without unwrapping it. Arrays, Optionals, and Promises are all functors.

```
// Array is a functor
[1, 2, 3].map(x => x * 2)         → [2, 4, 6]

// Optional is a functor
Some(5).map(x => x * 2)           → Some(10)
None.map(x => x * 2)              → None

// The pattern:
┌──────────┐   map(fn)   ┌──────────┐
│ Box( a )  │ ─────────► │ Box(fn(a))│
└──────────┘              └──────────┘
```

**Examples:** [Haskell Functor](https://github.com/ghc/ghc), [Scala Cats Functor](https://github.com/typelevel/cats), [fp-ts](https://github.com/gcanti/fp-ts)
