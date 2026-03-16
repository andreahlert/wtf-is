# WTF are Algebraic Data Types?

Algebraic data types (ADTs) let you define types by combining other types. A product type holds multiple values together (like a struct). A sum type holds one of several possible variants (like an enum). Together they model data precisely.

```
// Product type: A AND B (struct/record)
User = { name: String, age: Int }

// Sum type: A OR B (enum/union)
Shape = Circle(radius)
      | Rectangle(w, h)
      | Triangle(base, height)

// Combine them freely:
Result<T, E> = Ok(T) | Err(E)    ← sum of products
```

**Examples:** [Rust enums](https://doc.rust-lang.org/book/ch06-01-defining-an-enum.html), [Haskell](https://github.com/ghc/ghc), [TypeScript discriminated unions](https://www.typescriptlang.org/docs/handbook/unions-and-intersections.html)
