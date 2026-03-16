# WTF is Dependency Injection?

Instead of a class creating its own dependencies, they get passed in from outside. This makes code testable (swap real DB for a mock) and flexible (swap implementations without changing the class).

```
// Without DI: hard-coded dependency
class OrderService {
    db = new PostgresDB()         // locked in
}

// With DI: dependency passed in
class OrderService {
    constructor(db: Database) {   // any Database works
        this.db = db
    }
}

OrderService(PostgresDB())   // production
OrderService(MockDB())       // tests
```

**Examples:** [Spring](https://github.com/spring-projects/spring-framework), [InversifyJS](https://github.com/inversify/InversifyJS), [Google Wire](https://github.com/google/wire)
