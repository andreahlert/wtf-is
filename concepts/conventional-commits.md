# WTF are Conventional Commits?

A specification for commit messages that follows a structured format: `type(scope): description`. This makes commits machine-readable so tools can auto-generate changelogs and determine version bumps.

```
feat(auth): add OAuth2 login        --> minor version bump
fix(api): handle null response       --> patch version bump
feat!: remove legacy endpoint        --> major version bump (breaking)

Format: <type>(<scope>): <description>
Types:  feat, fix, docs, style, refactor, test, chore
```

**Examples:** [Conventional Commits Spec](https://www.conventionalcommits.org/), [commitlint](https://github.com/conventional-changelog/commitlint), [conventional-changelog](https://github.com/conventional-changelog/conventional-changelog)
