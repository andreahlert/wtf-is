# WTF are GitHub Actions?

GitHub's built-in CI/CD system. You define workflows in YAML files under `.github/workflows/` that run automatically on events like push, pull request, or schedule.

```
.github/workflows/ci.yml

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: npm install
      - run: npm test

Event (push) --> Workflow --> Job --> Steps
                                      ├── checkout code
                                      ├── install deps
                                      └── run tests
```

**Examples:** [GitHub Actions](https://github.com/features/actions), [actions/checkout](https://github.com/actions/checkout), [actions/setup-node](https://github.com/actions/setup-node)
