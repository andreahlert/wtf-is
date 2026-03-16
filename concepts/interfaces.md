# WTF are Interfaces?

An interface is a contract that defines what methods a type must have, without providing the implementation. Any type that fulfills the contract can be used wherever the interface is expected. In Go, interfaces are satisfied implicitly.

```
interface Storage {
    save(data: bytes) -> bool
    load(id: string) -> bytes
}

class S3Storage implements Storage { ... }
class DiskStorage implements Storage { ... }

fn backup(s: Storage) {   // works with any Storage
    s.save(data)
}
```

**Examples:** [Go interfaces](https://go.dev/tour/methods/9), [Java interfaces](https://github.com/openjdk/jdk), [TypeScript interfaces](https://www.typescriptlang.org/docs/handbook/interfaces.html)
