# WTF is Test Parallelism?

Running multiple tests at the same time across different CPU cores or machines to make your test suite faster. If 1000 tests take 10 minutes sequentially, running them on 10 cores might finish in 1 minute. Only works if your tests are properly isolated.

```
  Sequential:          Parallel (4 cores):
  [T1][T2][T3][T4]    [T1]  ← core 1
  ──────────────────   [T2]  ← core 2
  10 minutes           [T3]  ← core 3
                       [T4]  ← core 4
                       ──────
                       ~2.5 min
```

**Examples:** [pytest-xdist](https://github.com/pytest-dev/pytest-xdist), [Jest workers](https://github.com/jestjs/jest), [JUnit parallel](https://github.com/junit-team/junit5)
