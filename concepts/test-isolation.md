# WTF is Test Isolation?

The principle that each test must be completely independent from every other test. No shared state, no execution order dependencies. If test B fails only when test A runs first, you have an isolation problem. Each test sets up its own world and tears it down.

```
  ✗ Bad (shared state):
  Test A ──▶ writes to DB ──▶ Test B reads stale data

  ✓ Good (isolated):
  Test A ──▶ own DB ──▶ cleanup
  Test B ──▶ own DB ──▶ cleanup
  (run in any order, same result)
```

**Examples:** [pytest fixtures](https://github.com/pytest-dev/pytest), [Jest --runInBand](https://github.com/jestjs/jest), [Testcontainers](https://github.com/testcontainers/testcontainers-java)
