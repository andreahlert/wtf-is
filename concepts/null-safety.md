# WTF is Null Safety?

Null safety is a language feature that forces you to handle the possibility of missing values explicitly instead of letting null references crash your program at runtime. The compiler won't let you use a potentially null value without checking it first.

```
// Without null safety:
String name = getUser().name;   // might crash: NullPointerException

// With null safety:
String? name = getUser()?.name; // compiler forces you to handle null
name?.length                    // safe access
name!.length                    // explicit "I know it's not null"
```

**Examples:** [Kotlin](https://github.com/JetBrains/kotlin), [Dart](https://github.com/dart-lang/sdk), [Swift Optionals](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/#Optionals)
