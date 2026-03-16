# WTF is a Regression Test?

A test that makes sure something that used to work still works after a code change. When you fix a bug, you write a regression test for it so that exact bug never comes back. Your entire test suite eventually becomes a regression safety net.

```
  v1.0 ──▶ v1.1 ──▶ v1.2
   ✓         ✓        ✗  ← regression!
                       │
                  "this used to work"
```

**Examples:** [Jest](https://github.com/jestjs/jest), [pytest](https://github.com/pytest-dev/pytest), [Selenium](https://github.com/SeleniumHQ/selenium)
