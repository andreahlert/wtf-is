# WTF is an Option Type?

An Option type represents a value that might or might not exist. Instead of null, you get `Some(value)` or `None`, and the compiler forces you to handle both cases before using the value.

```
Option<User>
  ├── Some(User { name: "Ana" })   ← value exists
  └── None                          ← no value

match get_user(id) {
    Some(user) => print(user.name),
    None       => print("not found"),
}
```

**Examples:** [Rust Option](https://doc.rust-lang.org/std/option/), [Scala Option](https://github.com/scala/scala), [Swift Optional](https://developer.apple.com/documentation/swift/optional)
