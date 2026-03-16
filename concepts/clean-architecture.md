# WTF is Clean Architecture?

Concentric layers where dependencies point inward. The inner circle (entities/business rules) knows nothing about the outer circles (frameworks, UI, DB). The goal: your business logic is testable and framework-independent.

```
  ┌───────────────────────────────┐
  │  Frameworks & Drivers (outer) │
  │  ┌─────────────────────────┐  │
  │  │  Interface Adapters     │  │
  │  │  ┌───────────────────┐  │  │
  │  │  │  Use Cases         │  │  │
  │  │  │  ┌─────────────┐  │  │  │
  │  │  │  │  Entities    │  │  │  │
  │  │  │  └─────────────┘  │  │  │
  │  │  └───────────────────┘  │  │
  │  └─────────────────────────┘  │
  └───────────────────────────────┘
    Dependencies point ──► inward
```

**Examples:** [clean-architecture-manga](https://github.com/ivanpaulovich/clean-architecture-manga), [jasontaylordev/CleanArchitecture](https://github.com/jasontaylordev/CleanArchitecture), [buckpal](https://github.com/thombergs/buckpal)
