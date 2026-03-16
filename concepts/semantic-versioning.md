# WTF is Semantic Versioning?

Semantic versioning (semver) is a numbering scheme: MAJOR.MINOR.PATCH. Bump MAJOR for breaking changes, MINOR for new features (backwards-compatible), PATCH for bug fixes. This tells users what to expect when upgrading.

```
v2.4.1
│ │ │
│ │ └── PATCH: bug fix (safe to update)
│ └──── MINOR: new feature, no breaking changes (safe to update)
└────── MAJOR: breaking change (read the changelog!)

Examples:
  1.0.0 → 1.0.1   // bug fix
  1.0.1 → 1.1.0   // new feature added
  1.1.0 → 2.0.0   // API changed, might break your code
```

**Examples:** [semver.org](https://semver.org/), [npm semver](https://github.com/npm/node-semver), [Go modules](https://go.dev/ref/mod)
