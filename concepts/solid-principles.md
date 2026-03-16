# WTF are SOLID Principles?

SOLID is five design principles for writing maintainable object-oriented code. They guide you toward classes that are small, focused, and easy to change without breaking other things.

```
S  Single Responsibility   → one class, one reason to change
O  Open/Closed             → open for extension, closed for modification
L  Liskov Substitution     → subtypes must work wherever parent works
I  Interface Segregation   → many small interfaces > one fat interface
D  Dependency Inversion    → depend on abstractions, not concretions

     [Controller]
          │
          ▼
     [Interface]       ← depend on this
      ▲       ▲
      │       │
  [ImplA]  [ImplB]     ← not directly on these
```

**Examples:** [SOLID examples (TS)](https://github.com/engcfraposo/solid-principles-typescript), [Head First Design Patterns](https://github.com/bethrobson/Head-First-Design-Patterns), [Clean Architecture](https://github.com/jasontaylordev/CleanArchitecture)
