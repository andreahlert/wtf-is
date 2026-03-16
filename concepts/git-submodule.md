# WTF is Git Submodule?

It embeds one Git repository inside another at a specific commit. The parent repo tracks a pointer to that exact commit, not the submodule's full history.

```
my-project/
├── .gitmodules          # declares submodules
├── src/
└── libs/
    └── shared-lib/      # separate git repo pinned at commit abc123
        ├── .git
        └── index.js
```

**Examples:** [git-submodule docs](https://git-scm.com/docs/git-submodule), [Git Tools Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules), [Atlassian Submodule Tutorial](https://www.atlassian.com/git/tutorials/git-submodule)
