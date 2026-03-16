# WTF is a Spy?

A test double that wraps a real function, lets it execute normally, but secretly records all calls, arguments, and return values. Unlike a mock (which replaces behavior), a spy keeps the original behavior intact and just watches.

```
  Without spy:
    add(2, 3) ──▶ 5

  With spy:
    add(2, 3) ──▶ 5  (same result)
         │
         └──▶ spy.callCount = 1
              spy.args = [2, 3]
              spy.returnValue = 5
```

**Examples:** [Sinon.js](https://github.com/sinonjs/sinon), [Jest spyOn](https://github.com/jestjs/jest), [Jasmine](https://github.com/jasmine/jasmine)
