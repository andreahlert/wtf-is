# WTF is a Closure?

A closure is a function that remembers the variables from the scope where it was created, even after that scope is gone. The function "closes over" its environment and carries those variables with it.

```
fn make_counter():
    count = 0                     // local variable
    fn increment():
        count += 1                // captures 'count'
        return count
    return increment

counter = make_counter()
counter()  → 1                    // 'count' still alive
counter()  → 2                    // still remembers it
counter()  → 3
```

**Examples:** [JavaScript closures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures), [Rust closures](https://doc.rust-lang.org/book/ch13-01-closures.html), [Swift closures](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/)
