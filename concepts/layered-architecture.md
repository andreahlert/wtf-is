# WTF is Layered Architecture?

The classic approach: stack your code in horizontal layers where each layer only calls the one below it. Typically: Presentation, Business Logic, Data Access. Simple and familiar, but can lead to tight coupling if you're not careful.

```
  ┌─────────────────────┐
  │   Presentation      │  UI, API controllers
  ├─────────────────────┤
  │   Business Logic    │  Rules, validation
  ├─────────────────────┤
  │   Data Access       │  Repositories, ORM
  ├─────────────────────┤
  │   Database          │  Storage
  └─────────────────────┘
       calls go ▼ down
```

**Examples:** [Spring PetClinic](https://github.com/spring-projects/spring-petclinic), [Django](https://github.com/django/django), [Ruby on Rails](https://github.com/rails/rails)
