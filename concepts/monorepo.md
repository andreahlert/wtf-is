# WTF is a Monorepo?

A single Git repository that contains multiple projects, packages, or services. Not a monolith, the code is still modular, it's just stored together. The benefit is atomic changes across projects, shared tooling, and no dependency hell between repos.

```
Multi-repo:                     Monorepo:
├── repo-frontend/              ├── apps/
├── repo-backend/               │   ├── frontend/
├── repo-shared-lib/            │   └── backend/
└── repo-infra/                 ├── packages/
                                │   └── shared-lib/
4 repos, 4 CI configs,         ├── infra/
dependency versioning hell      └── one repo, one CI, atomic changes
```

**Examples:** Google (all code in one repo), Turborepo, Nx, Bazel, Lerna
