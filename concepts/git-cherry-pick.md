# WTF is Git Cherry-Pick?

It copies a single commit from one branch and applies it to another. You pick exactly which commits you want without merging the entire branch.

```
main:    A---B---C          main:    A---B---C---D'
              \                           \
feature:       D---E---F    feature:       D---E---F

         git cherry-pick D
```

**Examples:** [git-cherry-pick docs](https://git-scm.com/docs/git-cherry-pick), [Atlassian Cherry-Pick Tutorial](https://www.atlassian.com/git/tutorials/cherry-pick), [GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/about-pull-request-merges)
