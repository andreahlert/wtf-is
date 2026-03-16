# WTF is the Test Pyramid?

A model that says you should have many unit tests, fewer integration tests, and even fewer end-to-end tests. The base is wide (fast, cheap unit tests) and the top is narrow (slow, expensive E2E tests). Inverting the pyramid leads to slow, fragile test suites.

```
        /  E2E  \         few, slow, expensive
       /─────────\
      / Integration\      some, moderate
     /───────────────\
    /   Unit Tests    \   many, fast, cheap
   /___________________\
```

**Examples:** [Jest](https://github.com/jestjs/jest), [pytest](https://github.com/pytest-dev/pytest), [Cypress](https://github.com/cypress-io/cypress)
