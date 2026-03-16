# WTF is GitOps?

Using a Git repo as the single source of truth for your infrastructure and deployments. You change a YAML file, merge a PR, and an agent running in your cluster detects the change and applies it automatically. No SSH, no kubectl, no manual deploys.

```
Developer          Git Repo              Cluster
   │                  │                     │
   ├─ push change ──→ │                     │
   │                  │ ←── agent polls ────┤
   │                  │                     │
   │                  │ ── "new state!" ──→ │
   │                  │                     ├── applies changes
   │                  │                     │
   │              git revert ←──────────── rollback = git revert
```

**Examples:** ArgoCD, Flux, Weave GitOps
