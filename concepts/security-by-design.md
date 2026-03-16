# WTF is Security by Design?

Security by Design means building security into your system from the start rather than bolting it on later. Instead of "build first, secure later," you consider authentication, authorization, encryption, and input validation as core requirements during architecture and design phases. Retrofitting security is always harder and more expensive.

```
  ✗  Security as afterthought:
     Design → Build → Test → "Oh, add auth" → Hack fixes

  ✓  Security by design:
     ┌──────────────────────────────────┐
     │  Requirements: include security  │
     │  Design: threat model, trust     │
     │          boundaries              │
     │  Build: secure defaults, input   │
     │         validation baked in      │
     │  Test: security tests in CI      │
     │  Deploy: hardened config         │
     └──────────────────────────────────┘
```

**Examples:** [OWASP SAMM](https://github.com/owaspsamm/core), [SDL (Security Development Lifecycle)](https://www.microsoft.com/en-us/securityengineering/sdl), [BSIMM](https://www.bsimm.com/)
