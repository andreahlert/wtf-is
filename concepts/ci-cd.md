# WTF is CI/CD?

**CI (Continuous Integration):** automatically build and test your code every time someone pushes a commit. Catches bugs before they reach main.

**CD (Continuous Delivery/Deployment):** automatically ship tested code to production (or staging) without manual steps. Delivery = ready to deploy with one click. Deployment = deployed automatically, no click needed.

```
  git push
     │
     ▼
  ┌──────┐     ┌──────┐     ┌──────┐     ┌──────────┐
  │ Build │──→  │ Test │──→  │ Stage│──→  │Production│
  └──────┘     └──────┘     └──────┘     └──────────┘
  └─── CI ──────────┘       └──── CD ────────────────┘
```

**Examples:** GitHub Actions, GitLab CI, Jenkins, CircleCI
