# WTF is a Mock?

A test double that records how it was called so you can verify interactions. You don't just replace a dependency, you assert that your code called it the right way, with the right arguments, the right number of times. Mocks test behavior, not just output.

```
  Code ──▶ mock.sendEmail("bob@x.com")
                    │
                    ▼
  Assert: sendEmail was called once
          with "bob@x.com"
          not called with "spam@x.com"
```

**Examples:** [Mockito](https://github.com/mockito/mockito), [unittest.mock](https://github.com/python/cpython), [Sinon.js](https://github.com/sinonjs/sinon)
