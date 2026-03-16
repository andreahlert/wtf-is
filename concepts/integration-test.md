# WTF is an Integration Test?

A test that checks whether two or more components work correctly together. Unlike unit tests, these hit real databases, APIs, or file systems. Slower than unit tests but they catch the bugs that happen at the seams between modules.

```
  ┌──────────┐     ┌──────────┐
  │ Service A │────▶│ Service B │
  └──────────┘     └─────┬────┘
                         │
                    ┌────▼────┐
                    │   DB     │
                    └─────────┘
       ▲
  ┌────┴─────┐
  │ test the  │
  │ whole path│
  └──────────┘
```

**Examples:** [Testcontainers](https://github.com/testcontainers/testcontainers-java), [SuperTest](https://github.com/ladjs/supertest), [pytest-django](https://github.com/pytest-dev/pytest-django)
