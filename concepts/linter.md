# WTF is a Linter?

A tool that analyzes your source code to find bugs, anti-patterns, and style issues without running it. It reads the code statically and reports problems based on configurable rules.

```
Source code
    |
    v
Linter (static analysis)
    |
    ├── Bug: possible null dereference    (line 12)
    ├── Style: line too long              (line 45)
    └── Anti-pattern: unused import       (line 3)
    |
    v
Report / auto-fix
```

**Examples:** [ESLint](https://github.com/eslint/eslint), [Ruff](https://github.com/astral-sh/ruff), [golangci-lint](https://github.com/golangci/golangci-lint)
