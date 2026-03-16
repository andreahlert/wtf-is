# WTF is a Step (CI/CD)?

The smallest unit of work in a CI job. Each step either runs a shell command or uses a reusable action/plugin. Steps run sequentially within a job and share the same filesystem.

```
Job: test
  |
  ├── Step 1: actions/checkout@v4      (reusable action)
  ├── Step 2: actions/setup-node@v4    (reusable action)
  ├── Step 3: run: npm install         (shell command)
  ├── Step 4: run: npm test            (shell command)
  └── Step 5: run: npm run build       (shell command)

All steps share the same runner and working directory.
If any step fails, the remaining steps are skipped (by default).
```

**Examples:** [GitHub Actions Steps](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idsteps), [GitLab CI Script](https://docs.gitlab.com/ee/ci/yaml/#script), [GitHub Actions Marketplace](https://github.com/marketplace?type=actions)
