# WTF is Git Flow?

A branching model with dedicated branches for features, releases, hotfixes, and a permanent develop branch alongside main. It's structured but heavy for teams that deploy continuously.

```
main:      ──●──────────────●──────●──
             \              /      /
release:      \        ──●──      /
               \      /         /
develop:  ──●───●───●───●───●──
               \       /
feature:        ●───●──
```

**Examples:** [gitflow-avh](https://github.com/petervanderdoes/gitflow-avh), [Atlassian Git Flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow), [nvie's original post](https://nvie.com/posts/a-successful-git-branching-model/)
