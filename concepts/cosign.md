# WTF is Cosign?

A tool for signing and verifying container images. It attaches a cryptographic signature to an image so consumers can verify it actually came from you and hasn't been tampered with.

```
Build & Sign:
$ docker build -t myapp:v1 .
$ cosign sign myapp:v1
  (signs with your key or keyless via Sigstore)

Verify:
$ cosign verify myapp:v1
  Verified OK
  ├── signed by: user@example.com
  ├── issuer: GitHub Actions
  └── transparency log entry found
```

**Examples:** [Cosign](https://github.com/sigstore/cosign), [Sigstore](https://github.com/sigstore/sigstore), [cosign-installer action](https://github.com/sigstore/cosign-installer)
