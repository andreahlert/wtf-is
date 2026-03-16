# WTF is Commit Lint?

A tool that checks if your commit messages follow a specific format, usually Conventional Commits. It runs as a git hook and rejects commits with badly formatted messages.

```
git commit -m "fixed stuff"
        |
        v
commitlint checks message
        |
        v
ERROR: subject must be in format "type(scope): description"

git commit -m "fix(api): handle timeout"
        |
        v
commitlint: OK ✓
```

**Examples:** [commitlint](https://github.com/conventional-changelog/commitlint), [Husky + commitlint guide](https://commitlint.js.org/guides/local-setup), [commitizen](https://github.com/commitizen/cz-cli)
