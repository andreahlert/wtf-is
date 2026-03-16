# WTF is Defense in Depth?

Defense in Depth is a security strategy that layers multiple independent defenses so that if one fails, others still protect you. Instead of relying on a single firewall, you combine network rules, application validation, authentication, encryption, monitoring, and physical security. Each layer assumes the others might fail.

```
  Request from internet
       │
       ▼
  ┌──────────────┐
  │   Firewall   │  Layer 1: block bad IPs
  └──────────────┘
       │
  ┌──────────────┐
  │     WAF      │  Layer 2: block attack patterns
  └──────────────┘
       │
  ┌──────────────┐
  │  Auth + RBAC │  Layer 3: verify identity
  └──────────────┘
       │
  ┌──────────────┐
  │ Input Valid. │  Layer 4: sanitize data
  └──────────────┘
       │
  ┌──────────────┐
  │  Encryption  │  Layer 5: protect data at rest
  └──────────────┘
```

**Examples:** [AWS Security Best Practices](https://aws.amazon.com/architecture/security-identity-compliance/), [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework), [Zero Trust Architecture](https://www.cloudflare.com/learning/security/glossary/what-is-zero-trust/)
