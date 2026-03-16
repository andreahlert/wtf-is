# WTF is Code Coverage?

The specific metric that tells you which lines, branches, or functions in your source code were executed during a test run. Tools instrument your code to track execution, then produce a report. Often used as a CI gate ("PR must have > 80% coverage").

```
  Source file after instrumentation:

  1: function greet(name) {    ✓ hit 3x
  2:   if (name) {             ✓ hit 3x
  3:     return "Hi " + name;  ✓ hit 2x
  4:   }
  5:   return "Hi stranger";   ✓ hit 1x
  6: }

  Line coverage: 100%
```

**Examples:** [Istanbul/nyc](https://github.com/istanbuljs/nyc), [coverage.py](https://github.com/nedbat/coveragepy), [JaCoCo](https://github.com/jacoco/jacoco)
