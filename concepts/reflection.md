# WTF is Reflection?

Reflection lets a program inspect and modify its own structure at runtime. You can discover what methods a class has, read annotations, create instances from strings, or call methods by name. Frameworks use it heavily; application code should use it sparingly.

```
// Normal: you know the type at compile time
user = new User("Ana")
user.getName()

// Reflection: discover and call at runtime
cls = Class.forName("User")           // find class by name
obj = cls.newInstance()                // create instance
method = cls.getMethod("getName")      // find method by name
result = method.invoke(obj)            // call it

// Use cases: ORMs, serializers, DI frameworks, test runners
```

**Examples:** [Java Reflection](https://docs.oracle.com/javase/tutorial/reflect/), [Go reflect](https://pkg.go.dev/reflect), [Python inspect](https://github.com/python/cpython/blob/main/Lib/inspect.py)
