# WTF is Provenance (Software)?

A record of where a software artifact came from and how it was built. It answers: which source code, which build system, which inputs produced this exact binary or image. It's the supply chain receipt.

```
Artifact: myapp:v2.0.0@sha256:def456

Provenance record:
  Source:    github.com/org/repo@abc123
  Builder:   GitHub Actions (hosted runner)
  Workflow:  .github/workflows/release.yml
  Trigger:   push tag v2.0.0
  Inputs:    go 1.22, alpine:3.19
  Timestamp: 2024-03-15T10:30:00Z

"Can I trust this binary?" --> check its provenance.
```

**Examples:** [SLSA](https://slsa.dev/), [slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator), [npm provenance](https://docs.npmjs.com/generating-provenance-statements)
