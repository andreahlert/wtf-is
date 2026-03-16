# WTF is a Pre-Commit Hook?

A script that runs automatically before `git commit` completes. If it exits with a non-zero code, the commit is rejected. Commonly used to lint, format, or run tests on staged files.

```
git commit -m "add feature"
        |
        v
.git/hooks/pre-commit
  ├── run linter ......... pass
  ├── run formatter ...... pass
  └── run tests .......... FAIL
        |
        v
   commit aborted!
```

**Examples:** [pre-commit](https://github.com/pre-commit/pre-commit), [Husky](https://github.com/typicode/husky), [lefthook](https://github.com/evilmartians/lefthook)
