# WTF are Generics?

Generics let you write code that works with any type without duplicating it. You write the logic once with a placeholder type, and the compiler generates the specific versions for each type you actually use.

```
// Without generics: duplicate code
fn max_int(a: int, b: int) -> int
fn max_float(a: f64, b: f64) -> f64

// With generics: one function
fn max<T: Comparable>(a: T, b: T) -> T {
    if a > b { a } else { b }
}

max(3, 5)         // T = int
max(1.2, 3.4)     // T = f64
```

**Examples:** [Rust Generics](https://doc.rust-lang.org/book/ch10-01-syntax.html), [Go Generics](https://go.dev/doc/tutorial/generics), [TypeScript Generics](https://www.typescriptlang.org/docs/handbook/2/generics.html)
