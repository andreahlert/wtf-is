# WTF is an Environment (CI/CD)?

A named deployment target (staging, production) with its own secrets, protection rules, and approval requirements. It lets you control who can deploy where and track what's currently deployed.

```
Environments:

staging:
  ├── secrets: STAGING_API_KEY
  ├── protection: none
  └── auto-deploy on push to main

production:
  ├── secrets: PROD_API_KEY
  ├── protection: requires approval from @team-leads
  ├── wait timer: 5 minutes
  └── restricted to main branch only
```

**Examples:** [GitHub Environments](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment), [GitLab Environments](https://docs.gitlab.com/ee/ci/environments/), [ArgoCD](https://github.com/argoproj/argo-cd)
