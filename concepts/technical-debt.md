# WTF is Technical Debt?

Technical debt is the accumulated cost of shortcuts and quick fixes in your codebase. Like financial debt, it compounds: the longer you ignore it, the more expensive every future change becomes. Sometimes taking on debt is a deliberate tradeoff to ship faster.

```
Time ──────────────────────────────►

Ship fast        Debt grows          Everything is slow
with hacks       with each change    and painful
   │                  │                    │
   ▼                  ▼                    ▼
  [v1.0]     →    [v2.0]      →       [v3.0]
  1 day/feat      3 days/feat         2 weeks/feat
```

**Examples:** [SonarQube](https://github.com/SonarSource/sonarqube), [CodeClimate](https://codeclimate.com/), [Refactoring by Fowler](https://martinfowler.com/books/refactoring.html)
