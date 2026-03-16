# WTF is Inheritance vs Composition?

Inheritance says "a Dog IS an Animal." Composition says "a Dog HAS legs and a nose." Composition is usually preferred because it's more flexible: you can mix and match behaviors without deep class hierarchies that become fragile over time.

```
// Inheritance (is-a)             // Composition (has-a)
Animal                            struct Dog {
  └── Dog                             legs: Legs,
       └── GuideDog                   nose: Nose,
            └── ???                    trained: bool,
                                  }

Inheritance: change Animal → breaks everything below
Composition: swap Legs impl → only Legs changes
```

**Examples:** [Go embed (composition)](https://go.dev/doc/effective_go#embedding), [Rust (no inheritance)](https://doc.rust-lang.org/book/ch17-01-what-is-oo.html), [React composition](https://github.com/facebook/react)
