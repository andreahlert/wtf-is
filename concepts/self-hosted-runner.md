# WTF is a Self-Hosted Runner?

A machine you manage that executes CI/CD jobs instead of using the provider's cloud runners. Useful when you need specific hardware, faster builds, access to private networks, or want to avoid per-minute costs.

```
Cloud runner (default):          Self-hosted runner:

GitHub/GitLab Cloud              Your machine / VM / K8s
  ├── ephemeral VM                ├── persistent (you manage)
  ├── standard hardware           ├── custom hardware (GPU, ARM)
  ├── pay per minute              ├── your own costs
  └── no private network          └── access to private network

CI Job --> picks up by runner --> executes --> reports back
```

**Examples:** [GitHub Self-Hosted Runners](https://docs.github.com/en/actions/hosting-your-own-runners), [actions-runner-controller](https://github.com/actions/actions-runner-controller), [GitLab Runner](https://gitlab.com/gitlab-org/gitlab-runner)
