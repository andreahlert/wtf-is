# WTF is Semantic Release?

A tool that fully automates versioning and publishing based on your commit messages. It analyzes commits since the last release, determines the next semver version, generates release notes, and publishes the package.

```
git log since last tag
        |
        v
Analyze commits (feat? fix? breaking?)
        |
        v
Determine next version (major/minor/patch)
        |
        v
Update changelog + publish + git tag
```

**Examples:** [semantic-release](https://github.com/semantic-release/semantic-release), [go-semantic-release](https://github.com/go-semantic-release/semantic-release), [python-semantic-release](https://github.com/python-semantic-release/python-semantic-release)
