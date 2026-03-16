# WTF is Trunk-Based Development?

Everyone commits to a single branch (trunk/main) frequently, at least daily. No long-lived feature branches. Small changes, fast reviews, continuous integration. If a feature isn't ready, hide it behind a feature flag. Avoids painful merge conflicts from branches that diverge for weeks.

```
  Long-lived branches (painful):
  main    ──●──●──●──────────────●── merge conflict!
  feature ──────●──●──●──●──●──●─┘  (3 weeks behind)

  Trunk-based (smooth):
  main    ──●──●──●──●──●──●──●──●──●──
               ↑  ↑     ↑  ↑     ↑
             small commits, daily merges
             features hidden behind flags
```

**Examples:** [Trunk Based Development](https://trunkbaseddevelopment.com/), [Google monorepo](https://research.google/pubs/pub45424/), [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)
