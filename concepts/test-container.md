# WTF are Testcontainers?

A library that spins up real Docker containers (databases, message brokers, anything) for your integration tests. Instead of mocking PostgreSQL, you run an actual PostgreSQL container that starts before the test and gets destroyed after. Real dependencies, zero installation.

```
  Test starts
      │
      ├──▶ docker run postgres:15  ← real DB
      ├──▶ docker run redis:7     ← real cache
      │
      ├──▶ run tests against real services
      │
      └──▶ docker stop & remove   ← clean
```

**Examples:** [Testcontainers Java](https://github.com/testcontainers/testcontainers-java), [Testcontainers Python](https://github.com/testcontainers/testcontainers-python), [Testcontainers Node](https://github.com/testcontainers/testcontainers-node)
