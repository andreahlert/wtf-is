# WTF is Sigstore?

A free, open-source project that makes it easy to sign, verify, and protect software artifacts without managing your own keys. It provides keyless signing using OIDC identity and a transparency log so signatures are publicly auditable.

```
Developer signs artifact:

1. Authenticate via OIDC (GitHub, Google)
2. Fulcio issues short-lived signing certificate
3. Artifact is signed
4. Signature recorded in Rekor (transparency log)

Verifier:
1. Check signature
2. Check Rekor log entry
3. Verify OIDC identity matches expected signer
```

**Examples:** [Sigstore](https://github.com/sigstore/sigstore), [Cosign](https://github.com/sigstore/cosign), [Rekor](https://github.com/sigstore/rekor)
