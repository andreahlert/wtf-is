# WTF is Git Tag?

A named pointer to a specific commit, typically used to mark release versions. Unlike branches, tags don't move when new commits are added.

```
commits:  A---B---C---D---E---F

tags:         ^           ^
           v1.0.0     v2.0.0

Lightweight tag: just a pointer
Annotated tag:   pointer + author + message + date
```

**Examples:** [git-tag docs](https://git-scm.com/docs/git-tag), [GitHub Releases](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository), [Semantic Versioning](https://semver.org/)
