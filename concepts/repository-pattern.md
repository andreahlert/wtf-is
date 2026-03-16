# WTF is Repository Pattern?

An abstraction layer between your domain logic and data access. Instead of scattering SQL queries everywhere, you call `userRepo.findById(42)`. The repository hides whether it's hitting a database, cache, or API. Makes testing easy because you can swap in a fake.

```
  Domain Layer        Repository        Data Source
  ┌───────────┐    ┌─────────────┐    ┌───────────┐
  │           │    │ findById()  │    │           │
  │ Service   │───►│ save()      │───►│ Postgres  │
  │           │    │ delete()    │    │           │
  └───────────┘    └─────────────┘    └───────────┘
  doesn't know      interface          can be swapped
  about SQL                            for in-memory
```

**Examples:** [Spring Data JPA](https://github.com/spring-projects/spring-data-jpa), [TypeORM](https://github.com/typeorm/typeorm), [SQLAlchemy](https://github.com/sqlalchemy/sqlalchemy)
