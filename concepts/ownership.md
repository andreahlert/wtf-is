# WTF is Ownership?

Ownership is Rust's core memory rule: every value has exactly one owner variable. When the owner goes out of scope, the value is dropped. You can transfer ownership (move) but never have two owners at once.

```
let a = String::from("hi");   // a owns the string
let b = a;                     // ownership moves to b
// println!("{}", a);          // ERROR: a no longer owns it
println!("{}", b);             // works fine
```

**Examples:** [Rust Ownership Docs](https://doc.rust-lang.org/book/ch04-01-what-is-ownership.html), [Rust by Example](https://doc.rust-lang.org/rust-by-example/scope/move.html), [Rustlings](https://github.com/rust-lang/rustlings)
