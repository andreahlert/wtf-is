# WTF is Pattern Matching?

Pattern matching lets you check a value against a set of shapes and destructure it at the same time. Think of it as a switch statement on steroids that can unpack nested data structures.

```
match shape {
    Circle { radius }       => pi * radius * radius,
    Rectangle { w, h }      => w * h,
    Triangle { base, height } => 0.5 * base * height,
}

// Also works for tuples, lists, enums:
match (status, code) {
    (Ok, 200)  => "success",
    (Err, 404) => "not found",
    (Err, _)   => "other error",
}
```

**Examples:** [Rust match](https://doc.rust-lang.org/book/ch06-02-match.html), [Elixir](https://github.com/elixir-lang/elixir), [Scala](https://github.com/scala/scala)
