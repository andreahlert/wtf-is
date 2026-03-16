# WTF is Property-Based Testing?

Instead of writing specific test cases with specific inputs, you describe properties that should always be true, and the framework generates hundreds of random inputs to try to prove you wrong. If `reverse(reverse(list))` should always equal the original list, the framework will generate random lists until it finds one that breaks that rule.

```
  Property: sort(list) is always sorted

  Framework generates:
    [3,1,2]   → sort → [1,2,3] ✓
    []        → sort → []      ✓
    [5,5,5]   → sort → [5,5,5] ✓
    ... hundreds more random lists
```

**Examples:** [Hypothesis](https://github.com/HypothesisWorks/hypothesis), [fast-check](https://github.com/dubzzz/fast-check), [QuickCheck](https://github.com/nick8325/quickcheck)
