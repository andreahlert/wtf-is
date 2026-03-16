# WTF is a Matrix Build?

A CI strategy that runs the same job across multiple combinations of parameters like OS, language version, or database. Instead of writing separate jobs for each combo, you define axes and CI generates all combinations.

```
strategy:
  matrix:
    os: [ubuntu, macos]
    node: [18, 20, 22]

Generates 6 jobs:
  ubuntu + node 18    macos + node 18
  ubuntu + node 20    macos + node 20
  ubuntu + node 22    macos + node 22
```

**Examples:** [GitHub Actions Matrix](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs), [GitLab CI Parallel Matrix](https://docs.gitlab.com/ee/ci/yaml/#parallelmatrix), [CircleCI Matrix](https://circleci.com/docs/using-matrix-jobs/)
