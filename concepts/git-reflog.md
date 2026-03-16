# WTF is Git Reflog?

A local log of every time HEAD or a branch tip changed. Even if you delete a branch or do a hard reset, reflog keeps track so you can recover "lost" commits.

```
$ git reflog

abc1234 HEAD@{0}: commit: add feature
def5678 HEAD@{1}: rebase: moving to main
789abcd HEAD@{2}: reset: moving to HEAD~3   <-- "lost" commits
fedcba9 HEAD@{3}: commit: important work    <-- still recoverable!
```

**Examples:** [git-reflog docs](https://git-scm.com/docs/git-reflog), [Atlassian Reflog Tutorial](https://www.atlassian.com/git/tutorials/rewriting-history/git-reflog), [GitHub Blog](https://github.blog/open-source/git/highlights-from-git-2-45/)
