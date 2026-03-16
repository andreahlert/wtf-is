# WTF is Test Coverage?

A measurement of how much of your code is exercised by your tests. Usually reported as a percentage. 80% test coverage means 80% of your code ran during tests. High coverage doesn't mean your tests are good, it just means your tests touch most of the code.

```
  function add(a, b) {     ← covered ✓
    return a + b;           ← covered ✓
  }

  function divide(a, b) {  ← covered ✓
    if (b === 0) {          ← NOT covered ✗
      throw Error();        ← NOT covered ✗
    }
    return a / b;           ← covered ✓
  }

  Coverage: 4/6 lines = 66%
```

**Examples:** [Istanbul/nyc](https://github.com/istanbuljs/nyc), [coverage.py](https://github.com/nedbat/coveragepy), [JaCoCo](https://github.com/jacoco/jacoco)
