# WTF is TDD?

Test-Driven Development. You write a failing test before you write the code, then write just enough code to make it pass, then refactor. Red-green-refactor. The test defines what the code should do, so you never write code without knowing what "correct" looks like.

```
  ┌─────────┐    ┌─────────┐    ┌──────────┐
  │  RED     │──▶│  GREEN  │──▶│ REFACTOR  │
  │ write a  │   │ write   │   │ clean up  │
  │ failing  │   │ minimal │   │ the code  │
  │ test     │   │ code    │   │           │
  └─────────┘   └─────────┘   └─────┬─────┘
       ▲                             │
       └─────────────────────────────┘
```

**Examples:** [Jest](https://github.com/jestjs/jest), [pytest](https://github.com/pytest-dev/pytest), [RSpec](https://github.com/rspec/rspec)
