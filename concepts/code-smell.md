# WTF is a Code Smell?

A code smell is a surface-level pattern in code that suggests a deeper problem. It's not a bug; the code works. But it hints that the design could be improved. Common smells include very long functions, duplicated logic, and deeply nested conditionals.

```
Common smells:
┌─────────────────────┬──────────────────────────┐
│ Smell               │ Might mean               │
├─────────────────────┼──────────────────────────┤
│ 500-line function   │ needs splitting           │
│ copy-paste code     │ needs extraction          │
│ 10 parameters       │ needs a struct/object     │
│ if-if-if-if-if      │ needs polymorphism        │
│ God class           │ needs decomposition       │
└─────────────────────┴──────────────────────────┘
```

**Examples:** [SonarQube](https://github.com/SonarSource/sonarqube), [Refactoring Guru](https://refactoring.guru/refactoring/smells), [ESLint complexity rule](https://github.com/eslint/eslint)
