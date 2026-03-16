# WTF is Singleton Pattern?

Ensures a class has exactly one instance and provides a global point of access to it. Useful for things like database connection pools, loggers, or config objects. Overused, it becomes a disguised global variable that makes testing painful.

```
  ┌──────────────────────────┐
  │ Singleton                │
  │                          │
  │ - instance: Singleton    │
  │ - constructor() private  │
  │ + getInstance(): self    │
  └──────────────────────────┘

  Thread A ──► getInstance() ──┐
                               ├──► same object
  Thread B ──► getInstance() ──┘
```

**Examples:** [Winston Logger](https://github.com/winstonjs/winston), [python logging](https://docs.python.org/3/library/logging.html), [Spring Beans (default scope)](https://github.com/spring-projects/spring-framework)
