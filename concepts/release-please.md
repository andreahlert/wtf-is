# WTF is Release Please?

A Google-built tool that automates releases by reading conventional commits, opening a PR with version bumps and changelog updates, and creating GitHub releases when that PR merges.

```
push conventional commits
        |
        v
Release Please creates/updates PR
  - bumps version in package.json
  - updates CHANGELOG.md
        |
        v
merge PR --> GitHub Release + Git Tag created
```

**Examples:** [release-please](https://github.com/googleapis/release-please), [release-please-action](https://github.com/googleapis/release-please-action), [Google Cloud Blog](https://cloud.google.com/blog)
