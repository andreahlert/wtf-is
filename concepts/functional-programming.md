# WTF is Functional Programming?

Functional programming is a style where you build programs by composing pure functions and avoiding mutable state. Data flows through transformations instead of being changed in place. Functions are values you can pass around like any other data.

```
// Imperative (mutate state)        // Functional (transform data)
results = []                        results = users
for u in users:                       .filter(u => u.active)
    if u.active:                      .map(u => u.name)
        results.push(u.name)          .sort()
results.sort()
```

**Examples:** [Haskell](https://github.com/ghc/ghc), [Elixir](https://github.com/elixir-lang/elixir), [Ramda (JS)](https://github.com/ramda/ramda)
