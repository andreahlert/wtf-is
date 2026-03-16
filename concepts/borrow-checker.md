# WTF is the Borrow Checker?

The borrow checker is Rust's compile-time enforcer that makes sure references follow the rules: you can have either one mutable reference or any number of immutable references, but never both at the same time. This prevents data races and dangling pointers without a garbage collector.

```
let mut data = vec![1, 2, 3];

let r1 = &data;       // immutable borrow OK
let r2 = &data;       // second immutable borrow OK
// let r3 = &mut data; // ERROR: can't mutably borrow while immutable borrows exist
println!("{r1:?} {r2:?}");

let r3 = &mut data;   // now OK, r1 and r2 are no longer used
r3.push(4);
```

**Examples:** [Rust References](https://doc.rust-lang.org/book/ch04-02-references-and-borrowing.html), [Rustlings](https://github.com/rust-lang/rustlings), [Rust Analyzer](https://github.com/rust-lang/rust-analyzer)
