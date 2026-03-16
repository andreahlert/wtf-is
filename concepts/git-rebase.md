# WTF is Git Rebase?

It takes your branch's commits and replays them on top of another branch, rewriting history so it looks like you started from the latest point. The result is a clean, linear history without merge commits.

```
Before rebase:           After rebase:

main:  A---B---C         main:  A---B---C
        \                                \
feature: D---E           feature:         D'---E'
```

**Examples:** [git-rebase docs](https://git-scm.com/docs/git-rebase), [Atlassian Rebase Tutorial](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase), [GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git-rebase)
