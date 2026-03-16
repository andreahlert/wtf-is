# WTF is Dependency Confusion?

Dependency Confusion exploits how package managers resolve names. If your company has a private package called `internal-utils`, an attacker publishes `internal-utils` on the public registry with a higher version number. The package manager picks the public (malicious) one because it has a newer version.

```
Your package.json: "internal-utils": "^1.0.0"

Private registry:  internal-utils@1.2.0  ✓ (legit)
Public registry:   internal-utils@9.0.0  ✗ (attacker)

Package manager resolution:
  "9.0.0 > 1.2.0, I'll use the public one!"
       │
       ▼
  Malicious code installed

Fix: scope packages (@company/internal-utils)
     pin to private registry in .npmrc
```

**Examples:** [Socket](https://github.com/SocketDev/socket), [Artifactory](https://jfrog.com/artifactory/), [npm scopes](https://docs.npmjs.com/cli/v10/using-npm/scope)
