# WTF is Dependency Pinning?

Locking dependencies to exact versions instead of allowing ranges. This ensures everyone builds with the same code and a surprise update can't break your project or inject malicious code.

```
Unpinned (risky):              Pinned (safe):

requests>=2.0                  requests==2.31.0
actions/checkout@main          actions/checkout@abc123def
FROM node:20                   FROM node:20.11.1@sha256:abc...

Lock files do this automatically:
  package-lock.json    (npm)
  poetry.lock          (Python)
  go.sum               (Go)
  Cargo.lock           (Rust)
```

**Examples:** [pip-tools](https://github.com/jazzband/pip-tools), [Dependabot](https://github.com/dependabot/dependabot-core), [Renovate](https://github.com/renovatebot/renovate)
