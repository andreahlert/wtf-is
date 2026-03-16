# WTF is a Secret Manager?

A service that stores sensitive data (API keys, database passwords, certificates) securely, with access control, audit logging, and automatic rotation. The alternative is hardcoding secrets in code, env files, or config, which gets leaked, shared, and never rotated.

```
Bad:
  .env file:           DATABASE_URL=postgres://admin:p4ssw0rd@db:5432
  committed to git:    "oops"
  shared on Slack:     "here's the prod password"
  rotated:             never

Secret Manager:
  App ──→ "give me DATABASE_URL" ──→ [Secret Manager]
                                          │
                                     ├── access control (who can read?)
                                     ├── audit log (who did read?)
                                     ├── encryption at rest
                                     └── auto-rotation every 30 days
```

**Examples:** AWS Secrets Manager, HashiCorp Vault, GCP Secret Manager, Doppler, 1Password (for teams)
