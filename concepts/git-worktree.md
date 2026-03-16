# WTF is Git Worktree?

It lets you check out multiple branches simultaneously in separate directories, all sharing the same `.git` data. No need to stash or clone again just to work on a different branch.

```
~/project/              (main branch)
├── .git/
├── src/

~/project-fix/          (linked worktree, bugfix branch)
├── src/
                        shares .git with ~/project/
```

**Examples:** [git-worktree docs](https://git-scm.com/docs/git-worktree), [Atlassian Worktree Tutorial](https://www.atlassian.com/git/tutorials/git-worktree), [Git SCM Book](https://git-scm.com/book/en/v2)
