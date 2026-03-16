# WTF is Attack Surface?

Attack Surface is the total set of points where an attacker can try to get into or extract data from your system. Every API endpoint, open port, user input field, third-party integration, and admin panel is part of it. The goal is to make the attack surface as small as possible by removing unnecessary features, closing ports, and limiting access.

```
Typical attack surface:

  ┌─────────────────────────────────────┐
  │            Your System              │
  │                                     │
  │  ● Public API (12 endpoints)        │
  │  ● Web UI (login, forms, uploads)   │
  │  ● Admin panel (/admin)             │
  │  ● Open ports (22, 80, 443, 5432)   │
  │  ● Third-party webhooks             │
  │  ● Email processing                 │
  └─────────────────────────────────────┘

  Reduce: close port 5432, remove /admin from public,
          drop unused API endpoints, validate all inputs
```

**Examples:** [Shodan](https://www.shodan.io/), [nmap](https://github.com/nmap/nmap), [Amass](https://github.com/owasp-amass/amass)
