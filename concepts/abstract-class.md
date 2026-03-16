# WTF is an Abstract Class?

An abstract class is a class you can't instantiate directly. It provides some shared implementation and leaves some methods for subclasses to fill in. It's a halfway point between a full class and an interface.

```
abstract class Shape {
    color: String              // shared state
    fn area() -> float         // abstract: subclass MUST implement
    fn describe() {            // concrete: shared implementation
        print(color + " shape, area=" + area())
    }
}

class Circle extends Shape {
    fn area() -> float { pi * r * r }  // required
}
// Shape()   → ERROR, can't instantiate
// Circle()  → OK
```

**Examples:** [Java Abstract Classes](https://docs.oracle.com/javase/tutorial/java/IandI/abstract.html), [Python ABC](https://github.com/python/cpython/blob/main/Lib/abc.py), [C# Abstract](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/abstract)
