# WTF is an Acceptance Test?

A test that verifies the software meets business requirements, written in terms the customer would understand. It answers "does this feature do what was asked for?" rather than "does this code work?" Often written before the code, as the definition of done.

```
  Business Requirement
         │
         ▼
  ┌──────────────────────┐
  │ GIVEN a logged-in user│
  │ WHEN they add to cart │
  │ THEN cart count = 1   │
  └──────────────────────┘
         │
    Pass = feature complete
```

**Examples:** [Cucumber](https://github.com/cucumber/cucumber), [FitNesse](https://github.com/unclebob/fitnesse), [Robot Framework](https://github.com/robotframework/robotframework)
