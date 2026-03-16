# WTF is an Artifact (CI/CD)?

A file produced by a CI job that you want to keep after the job finishes: test reports, built binaries, coverage data, Docker images. Artifacts can be downloaded or passed between jobs.

```
Job: build
  ├── compile code
  └── upload artifact: dist/app.zip

Job: deploy (needs: build)
  ├── download artifact: dist/app.zip
  └── deploy to server

Job: test
  ├── run tests
  └── upload artifact: coverage-report/
      (downloadable from CI UI for 90 days)
```

**Examples:** [actions/upload-artifact](https://github.com/actions/upload-artifact), [actions/download-artifact](https://github.com/actions/download-artifact), [GitLab CI Artifacts](https://docs.gitlab.com/ee/ci/jobs/job_artifacts.html)
