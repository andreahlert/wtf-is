# WTF is Onion Architecture?

Like Clean Architecture but with a specific layer structure: Domain Model at the core, then Domain Services, then Application Services, then Infrastructure on the outside. All dependencies point inward. The infrastructure layer (DB, APIs) is a detail, not a foundation.

```
  ┌─── Infrastructure (outer) ───┐
  │  ┌─── Application Services ──┐│
  │  │  ┌── Domain Services ───┐ ││
  │  │  │  ┌── Domain Model ─┐ │ ││
  │  │  │  │   Entities      │ │ ││
  │  │  │  │   Value Objects │ │ ││
  │  │  │  └─────────────────┘ │ ││
  │  │  └──────────────────────┘ ││
  │  └───────────────────────────┘│
  └───────────────────────────────┘
```

**Examples:** [clean-architecture-manga](https://github.com/ivanpaulovich/clean-architecture-manga), [Equinox](https://github.com/jet/equinox), [NorthwindTraders](https://github.com/jasontaylordev/NorthwindTraders)
