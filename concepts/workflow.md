# WTF is a Workflow (CI/CD)?

An automated pipeline defined in a config file that triggers on events and runs a series of jobs. It's the top-level unit in most CI systems: one YAML file equals one workflow.

```
Trigger (push/PR/schedule/manual)
    |
    v
Workflow
    |
    ├── Job: lint
    |    ├── Step: checkout
    |    └── Step: run eslint
    |
    ├── Job: test (depends on lint)
    |    ├── Step: checkout
    |    └── Step: run pytest
    |
    └── Job: deploy (depends on test)
         └── Step: deploy to prod
```

**Examples:** [GitHub Actions](https://github.com/features/actions), [GitLab CI](https://docs.gitlab.com/ee/ci/), [CircleCI](https://circleci.com/)
