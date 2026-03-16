# WTF is Certificate Authority?

A Certificate Authority (CA) is an organization that issues digital certificates to verify that a website is who it claims to be. When your browser sees a padlock, it means a CA vouched for that site's identity. CAs form a chain of trust: root CAs are pre-installed in your OS/browser, and they sign intermediate CAs, which sign individual site certificates.

```
Root CA (pre-installed in browser/OS)
  |
  └── Intermediate CA
        |
        └── example.com certificate
              |
              └── Your browser checks:
                    ✓ Certificate signed by intermediate?
                    ✓ Intermediate signed by root?
                    ✓ Root trusted by OS?
```

**Examples:** [Let's Encrypt](https://letsencrypt.org/), [step-ca](https://github.com/smallstep/certificates), [cfssl](https://github.com/cloudflare/cfssl)
