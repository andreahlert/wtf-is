# WTF is a Unit Test?

A test that checks a single function, method, or class in complete isolation from everything else. If it breaks, you know exactly where the bug is. Fast to run, so you run thousands of them on every commit.

```
  ┌─────────────┐
  │  Your Code   │
  ├──┬──┬──┬──┬──┤
  │f1│f2│f3│f4│f5│  ← each function tested alone
  └──┴──┴──┴──┴──┘
       │
   ┌───▼───┐
   │ test? │  ✓ pass / ✗ fail
   └───────┘
```

**Examples:** [Jest](https://github.com/jestjs/jest), [pytest](https://github.com/pytest-dev/pytest), [JUnit](https://github.com/junit-team/junit5)
