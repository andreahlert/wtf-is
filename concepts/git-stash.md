# WTF is Git Stash?

It saves your uncommitted changes to a temporary stack so you can switch branches or pull updates without losing work. When you're ready, you pop them back.

```
Working directory        Stash stack
+------------------+     +------------------+
| modified files   | --> | stash@{0}: WIP   |
| staged changes   |     | stash@{1}: older |
+------------------+     +------------------+
    (now clean)            git stash pop
```

**Examples:** [git-stash docs](https://git-scm.com/docs/git-stash), [Atlassian Stash Tutorial](https://www.atlassian.com/git/tutorials/saving-changes/git-stash), [GitHub Docs](https://docs.github.com/en/get-started/using-git)
