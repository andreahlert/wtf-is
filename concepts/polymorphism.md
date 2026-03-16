# WTF is Polymorphism?

Polymorphism means the same function or method behaves differently depending on what type it's called on. You call `area()` on any shape and each shape knows how to compute its own area. The caller doesn't need to know the concrete type.

```
fn total_area(shapes: List<Shape>) -> float:
    sum = 0
    for s in shapes:
        sum += s.area()      // each shape responds differently
    return sum

  Circle.area()    → pi * r^2
  Rectangle.area() → w * h
  Triangle.area()  → 0.5 * b * h
```

**Examples:** [Rust dyn Trait](https://doc.rust-lang.org/book/ch17-02-trait-objects.html), [Python duck typing](https://github.com/python/cpython), [Java polymorphism](https://docs.oracle.com/javase/tutorial/java/IandI/polymorphism.html)
