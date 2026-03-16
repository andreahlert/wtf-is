# WTF is PKI?

PKI (Public Key Infrastructure) is the system of certificate authorities, digital certificates, and trust relationships that makes HTTPS and other secure communication possible. It answers the question: "how do I know this public key actually belongs to who they claim to be?" A trusted Certificate Authority (CA) vouches for the owner by signing their certificate.

```
  ┌──────────────────┐
  │ Root CA (trusted │  Pre-installed in your browser/OS
  │ by your browser) │
  └──────────────────┘
          │ signs
          ▼
  ┌──────────────────┐
  │ Intermediate CA  │
  └──────────────────┘
          │ signs
          ▼
  ┌──────────────────┐
  │ example.com cert │  "This public key belongs to example.com"
  └──────────────────┘

  Browser checks: cert signed by trusted CA? → ✓ padlock
```

**Examples:** [Let's Encrypt](https://github.com/letsencrypt), [cfssl](https://github.com/cloudflare/cfssl), [step-ca](https://github.com/smallstep/certificates)
