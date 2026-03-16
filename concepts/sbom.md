# WTF is SBOM?

SBOM (Software Bill of Materials) is a complete inventory of every component, library, and dependency in your software. Like a food ingredients label but for code. When a vulnerability is found in a library, you check your SBOM to see if you're affected instead of guessing.

```
Your App's SBOM:

  ┌─────────────────────────────────┐
  │  my-app v1.0.0                  │
  │  ├── express 4.18.2             │
  │  │   ├── body-parser 1.20.1     │
  │  │   └── cookie 0.5.0           │
  │  ├── lodash 4.17.21             │
  │  └── jsonwebtoken 9.0.0         │
  │      └── jws 3.2.2              │
  └─────────────────────────────────┘

  New CVE in jws < 3.2.3?
  → Check SBOM → you're affected → patch it
```

**Examples:** [Syft](https://github.com/anchore/syft), [CycloneDX](https://github.com/CycloneDX), [SPDX](https://github.com/spdx/tools)
