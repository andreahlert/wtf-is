# WTF are Annotations / Decorators?

Annotations (Java) and decorators (Python/TypeScript) are metadata you attach to classes, methods, or fields. They don't change the code directly but signal to frameworks or tools how to handle that code: "this is a REST endpoint", "cache this", "inject this".

```
// Python decorator: wraps a function
@cache
@login_required
def get_dashboard(user):
    return render(user)

// Java annotation: metadata for the framework
@RestController
@RequestMapping("/api")
class UserController {
    @GetMapping("/users/{id}")
    public User getUser(@PathVariable int id) { ... }
}
```

**Examples:** [Python decorators](https://docs.python.org/3/glossary.html#term-decorator), [Java annotations](https://github.com/openjdk/jdk), [TypeScript decorators](https://www.typescriptlang.org/docs/handbook/decorators.html)
