# WTF is a Macro?

A macro is code that generates other code at compile time. You write a template, and the compiler expands it into real code before compilation. Unlike functions, macros can manipulate the syntax tree itself, creating new syntax or eliminating boilerplate.

```
// Rust macro: generates match arms at compile time
macro_rules! vec {
    ( $( $x:expr ),* ) => {
        { let mut v = Vec::new(); $( v.push($x); )* v }
    };
}

vec![1, 2, 3]
// expands to:
// { let mut v = Vec::new(); v.push(1); v.push(2); v.push(3); v }

// C macro (simpler, text substitution):
#define MAX(a,b) ((a) > (b) ? (a) : (b))
```

**Examples:** [Rust macros](https://doc.rust-lang.org/book/ch19-06-macros.html), [Elixir macros](https://github.com/elixir-lang/elixir), [Lisp macros](https://github.com/sbcl/sbcl)
