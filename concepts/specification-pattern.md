# WTF is Specification Pattern?

Encapsulate a business rule as an object that answers true/false. Instead of scattering `if (user.age >= 18 && user.verified)` everywhere, you create `EligibleUserSpec` and combine specs with AND, OR, NOT. Reusable, testable, composable.

```
  ┌─────────────────┐   ┌──────────────────┐
  │ AgeSpec         │   │ VerifiedSpec     │
  │ isSatisfied(u)  │   │ isSatisfied(u)   │
  └────────┬────────┘   └────────┬─────────┘
           │      AND            │
           └──────┬──────────────┘
                  ▼
         ┌────────────────┐
         │ EligibleSpec   │
         │ isSatisfied(u) │ → true/false
         └────────────────┘
```

**Examples:** [ardalis/Specification](https://github.com/ardalis/Specification), [RubySpec](https://github.com/ruby/spec), [Spring Data Specifications](https://github.com/spring-projects/spring-data-jpa)
