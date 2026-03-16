# WTF is Security Misconfiguration?

Security Misconfiguration is when systems are deployed with insecure default settings, unnecessary features enabled, open cloud storage buckets, verbose error messages shown to users, or missing security patches. It's the most common vulnerability because there are so many things to configure and any one of them can be wrong.

```
Common misconfigurations:

  ✗  Default admin password left unchanged
  ✗  Debug mode enabled in production
  ✗  S3 bucket set to public
  ✗  Directory listing enabled on web server
  ✗  Stack traces shown in error responses
  ✗  Unnecessary ports open

  ✓  Hardened defaults + automated config audits
```

**Examples:** [ScoutSuite](https://github.com/nccgroup/ScoutSuite), [Prowler](https://github.com/prowler-cloud/prowler), [CIS Benchmarks](https://www.cisecurity.org/cis-benchmarks)
