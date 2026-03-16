# WTF is a Test Fixture?

The fixed state your tests need to run: test data, database records, config files, or server instances. Fixtures set up the "world" before each test and tear it down after. Without fixtures, every test would have to build its own universe from scratch.

```
  Before each test:
    fixture ──▶ create user "Bob"
            ──▶ seed 3 orders
            ──▶ start mock server

  Run test...

  After each test:
    fixture ──▶ delete all data
            ──▶ stop mock server
```

**Examples:** [pytest fixtures](https://github.com/pytest-dev/pytest), [JUnit @Before](https://github.com/junit-team/junit5), [factory_bot](https://github.com/thoughtbot/factory_bot)
