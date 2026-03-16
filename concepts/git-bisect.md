# WTF is Git Bisect?

It does a binary search through your commit history to find exactly which commit introduced a bug. You mark commits as "good" or "bad" and git narrows it down automatically.

```
Commits:  A---B---C---D---E---F---G---H

Step 1:   good              ?           bad
Step 2:   good      ?       bad
Step 3:   good  ?   bad
Result:         ^ this commit broke it
```

**Examples:** [git-bisect docs](https://git-scm.com/docs/git-bisect), [Atlassian Bisect Tutorial](https://www.atlassian.com/git/tutorials/git-bisect), [Git Tools Debugging](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git)
