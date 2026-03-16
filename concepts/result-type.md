# WTF is a Result Type?

A Result type represents an operation that can succeed or fail. Instead of throwing exceptions, the function returns `Ok(value)` or `Err(error)`, and the compiler forces you to handle both cases.

```
Result<File, Error>
  ├── Ok(file)              ← success
  └── Err("not found")      ← failure with reason

match open_file("data.csv") {
    Ok(file) => read(file),
    Err(e)   => log(e),
}
```

**Examples:** [Rust Result](https://doc.rust-lang.org/std/result/), [Swift Result](https://developer.apple.com/documentation/swift/result), [neverthrow (TS)](https://github.com/supermacro/neverthrow)
