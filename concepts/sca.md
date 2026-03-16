# WTF is SCA?

SCA (Software Composition Analysis) scans your project's dependencies to find known vulnerabilities, outdated versions, and license issues. It checks your package.json, requirements.txt, or go.mod against vulnerability databases. Most security breaches come through dependencies, not your own code.

```
Your project
     │
     ▼
  ┌───────────┐    checks against    ┌──────────────┐
  │ SCA Tool  │───────────────────▶  │ CVE Database │
  │           │                      │ NVD, OSV,    │
  │ reads:    │                      │ GitHub Adv.  │
  │ lock files│                      └──────────────┘
  └───────────┘
       │
       ▼
  "lodash@4.17.20 has CVE-2021-23337 (High)"
  "jsonwebtoken@8.5.1 has CVE-2022-23529 (Critical)"
```

**Examples:** [Dependabot](https://github.com/dependabot), [Snyk](https://github.com/snyk/cli), [Trivy](https://github.com/aquasecurity/trivy)
