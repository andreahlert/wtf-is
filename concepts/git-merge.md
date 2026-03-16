# WTF is Git Merge?

It combines two branches by creating a new "merge commit" that ties their histories together. Unlike rebase, it preserves the exact history of both branches.

```
Before merge:            After merge:

main:  A---B---C         main:  A---B---C---F
        \                        \         /
feature: D---E           feature: D---E---
```

**Examples:** [git-merge docs](https://git-scm.com/docs/git-merge), [Atlassian Merge Tutorial](https://www.atlassian.com/git/tutorials/using-branches/git-merge), [GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request)
