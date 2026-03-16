# WTF is Git Hook?

A script that Git runs automatically before or after events like commit, push, or merge. You put them in `.git/hooks/` and they can reject commits, run tests, or enforce rules.

```
git commit
    |
    v
pre-commit hook -----> [lint, format, test]
    |                        |
    | (pass)                 | (fail)
    v                        v
commit created          commit aborted
```

**Examples:** [git-hooks docs](https://git-scm.com/docs/githooks), [pre-commit](https://github.com/pre-commit/pre-commit), [Husky](https://github.com/typicode/husky)
