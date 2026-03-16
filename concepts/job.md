# WTF is a Job (CI/CD)?

A group of steps that runs on one machine (runner) as a unit. Jobs within a workflow can run in parallel or depend on each other. Each job starts with a clean environment.

```
Workflow
  |
  ├── Job: test-linux     (ubuntu runner)
  |    ├── Step: checkout
  |    └── Step: npm test
  |
  ├── Job: test-windows   (windows runner)  <-- parallel
  |    ├── Step: checkout
  |    └── Step: npm test
  |
  └── Job: deploy         (needs: test-linux, test-windows)
       └── Step: deploy
```

**Examples:** [GitHub Actions Jobs](https://docs.github.com/en/actions/using-jobs), [GitLab CI Jobs](https://docs.gitlab.com/ee/ci/jobs/), [CircleCI Jobs](https://circleci.com/docs/jobs-steps/)
