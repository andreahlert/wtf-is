# WTF is a Flaky Test?

A test that sometimes passes and sometimes fails without any code changes. Common causes: timing issues, shared state, network dependencies, race conditions, or reliance on execution order. Flaky tests destroy trust in the test suite because people start ignoring failures.

```
  Same code, same test:

  Run 1: ✓ pass
  Run 2: ✓ pass
  Run 3: ✗ fail   ← nothing changed!
  Run 4: ✓ pass
  Run 5: ✗ fail

  Team reaction: "just re-run CI"  ← bad
```

**Examples:** [BuildPulse](https://buildpulse.io), [Jest --bail](https://github.com/jestjs/jest), [pytest-rerunfailures](https://github.com/pytest-dev/pytest-rerunfailures)
