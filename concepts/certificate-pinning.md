# WTF is Certificate Pinning?

Certificate Pinning means hardcoding which certificate (or public key) your app trusts for a specific server, instead of trusting any certificate signed by any CA. This protects against compromised or rogue CAs issuing fake certificates for your domain. It's common in mobile apps and high-security API clients.

```
Normal TLS:
  App trusts ANY cert signed by ANY of 100+ CAs
  Rogue CA signs fake cert for your-api.com → app trusts it ✗

With pinning:
  App hardcodes: "your-api.com must use THIS specific cert"
  Rogue CA cert for your-api.com → app rejects it ✓

  ┌───────┐                    ┌────────┐
  │  App  │── TLS handshake ──▶│ Server │
  └───────┘                    └────────┘
      │
      ▼
  Server cert matches pinned cert/key?
    Yes → proceed
    No  → reject connection
```

**Examples:** [TrustKit (iOS)](https://github.com/datatheorem/TrustKit), [OkHttp CertificatePinner](https://github.com/square/okhttp), [Android Network Security Config](https://developer.android.com/privacy-and-security/security-config)
