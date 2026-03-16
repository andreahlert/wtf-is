# WTF is Domain-Driven Design?

A software design approach where you model your code around the business domain, not the database or UI. You talk to domain experts, learn their language, and structure your code to mirror how the business actually works. The shared vocabulary between devs and business people is called the "Ubiquitous Language."

```
  Business Domain
  ┌─────────────────────────┐
  │  Ubiquitous Language     │
  │  ┌───────┐  ┌─────────┐ │
  │  │Entity │  │Value Obj │ │
  │  └───┬───┘  └────┬────┘ │
  │      └─────┬─────┘      │
  │       ┌────▼────┐       │
  │       │Aggregate│       │
  │       └─────────┘       │
  └─────────────────────────┘
```

**Examples:** [ddd-starter-modelling-process](https://github.com/ddd-crew/ddd-starter-modelling-process), [Equinox](https://github.com/jet/equinox), [Eventuous](https://github.com/Eventuous/eventuous)
