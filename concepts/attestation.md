# WTF is an Attestation?

A signed statement about a software artifact: who built it, what went into it, what steps were taken. It's machine-readable proof that specific claims about an artifact are true.

```
Attestation for myapp:v1.0.0

{
  "subject": "myapp@sha256:abc123...",
  "predicateType": "https://slsa.dev/provenance/v1",
  "predicate": {
    "builder": "GitHub Actions",
    "buildType": "workflow",
    "materials": [
      { "uri": "git+https://github.com/org/repo@main" }
    ]
  },
  "signature": "MEUCIQDx..."    <-- cryptographically signed
}
```

**Examples:** [in-toto](https://github.com/in-toto/in-toto), [SLSA](https://slsa.dev/), [GitHub Artifact Attestations](https://docs.github.com/en/actions/security-guides/using-artifact-attestations-to-establish-provenance-for-builds)
