# WTF is Branch Coverage?

A stricter form of code coverage that checks whether every possible branch (if/else, switch cases, ternary) has been taken. Line coverage might say 100% even if you only tested the `if` but never the `else`. Branch coverage catches that gap.

```
  if (loggedIn) {       Branch 1: true  ✓ tested
    showDashboard();
  } else {              Branch 2: false ✗ NOT tested
    showLogin();
  }

  Line coverage:  66% (4/6 lines hit)
  Branch coverage: 50% (1/2 branches taken)
```

**Examples:** [Istanbul/nyc](https://github.com/istanbuljs/nyc), [coverage.py](https://github.com/nedbat/coveragepy), [JaCoCo](https://github.com/jacoco/jacoco)
