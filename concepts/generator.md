# WTF is a Generator?

A generator is a function that can pause and resume, yielding values one at a time instead of returning them all at once. Each time you ask for the next value, it picks up where it left off.

```
fn fibonacci():
    a, b = 0, 1
    while true:
        yield a          ← pause here, return a
        a, b = b, a + b  ← resume here next time

gen = fibonacci()
next(gen)  → 0
next(gen)  → 1
next(gen)  → 1
next(gen)  → 2
// infinite sequence, constant memory
```

**Examples:** [Python generators](https://docs.python.org/3/howto/functional.html#generators), [JavaScript generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator), [C# IEnumerable yield](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/statements/yield)
