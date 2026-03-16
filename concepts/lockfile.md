# WTF is a Lockfile?

A lockfile records the exact versions of every dependency (and their dependencies) that were installed. It ensures everyone on the team and CI gets identical builds, even if new versions of packages are published.

```
package.json:  "express": "^4.18.0"   ← range (flexible)
package-lock.json:                     ← exact (pinned)
  express@4.18.2
    body-parser@1.20.1
      bytes@3.1.2
      content-type@1.0.5

Without lockfile:  dev has 4.18.2, CI gets 4.18.3 → "works on my machine"
With lockfile:     everyone gets 4.18.2 → reproducible builds
```

**Examples:** [package-lock.json (npm)](https://github.com/npm/cli), [Cargo.lock (Rust)](https://github.com/rust-lang/cargo), [poetry.lock (Python)](https://github.com/python-poetry/poetry)
