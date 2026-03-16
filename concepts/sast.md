# WTF is SAST?

SAST (Static Application Security Testing) scans your source code for vulnerabilities without running the application. It reads your code like a very paranoid reviewer, looking for patterns like SQL concatenation, hardcoded secrets, or unsafe function calls. It runs early in the pipeline, often on every commit.

```
Developer writes code
       │
       ▼
  ┌──────────┐
  │   SAST   │  Scans source code (not running app)
  │  Scanner │
  └──────────┘
       │
       ▼
  "Line 42: SQL concatenation found (CWE-89)"
  "Line 87: Hardcoded password (CWE-798)"

  Pros: Fast, early feedback, no running app needed
  Cons: False positives, can't find runtime issues
```

**Examples:** [Semgrep](https://github.com/semgrep/semgrep), [CodeQL](https://github.com/github/codeql), [Bandit](https://github.com/PyCQA/bandit)
