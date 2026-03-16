# WTF is Responsible Disclosure?

Responsible Disclosure is the practice of privately reporting a security vulnerability to the affected vendor and giving them time to fix it before making it public. Typically the researcher gives 90 days. This balances the need to protect users (vendor patches first) with the need for transparency (public learns eventually).

```
Timeline:

  Day 0    Researcher finds vulnerability
  Day 1    Reports privately to vendor
  Day 2-89 Vendor develops and tests patch
  Day 90   Patch released + public disclosure
                │
                ▼
           Users can update, community learns

  vs. Full disclosure (publish immediately, risky)
  vs. No disclosure (vendor ignores, users stay vulnerable)
```

**Examples:** [GitHub Security Advisories](https://github.com/advisories), [Google Project Zero](https://googleprojectzero.blogspot.com/), [CERT/CC](https://www.kb.cert.org/vuls/)
