# WTF is Mutation Testing?

A way to test your tests. The tool makes small changes (mutations) to your source code, like flipping `>` to `<` or changing `true` to `false`, then runs your test suite. If your tests still pass after a mutation, they are not catching that scenario and you have a gap.

```
  Source:  if (age >= 18)
  Mutant:  if (age <  18)   ← flip operator
                │
           Run tests...
                │
        Tests still pass? → your tests are weak
        Tests fail?       → mutant killed ✓
```

**Examples:** [Stryker](https://github.com/stryker-mutator/stryker-js), [pitest](https://github.com/hcoles/pitest), [mutmut](https://github.com/boxed/mutmut)
