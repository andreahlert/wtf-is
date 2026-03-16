# WTF is CVSS?

CVSS (Common Vulnerability Scoring System) is a standardized way to rate the severity of security vulnerabilities on a 0-10 scale. It considers factors like how easy the exploit is, whether it needs authentication, and what impact it has on confidentiality, integrity, and availability. A score of 9+ is critical, 7-8.9 is high.

```
CVSS Score Ranges:

  0.0       None
  0.1─3.9   Low        "Fix when convenient"
  4.0─6.9   Medium     "Plan to fix soon"
  7.0─8.9   High       "Fix this sprint"
  9.0─10.0  Critical   "Drop everything and fix now"

Factors:
  Attack Vector     Network / Adjacent / Local / Physical
  Complexity        Low / High
  Privileges        None / Low / High
  User Interaction  None / Required
```

**Examples:** [CVSS Calculator](https://www.first.org/cvss/calculator/3.1), [NVD](https://nvd.nist.gov/), [Trivy](https://github.com/aquasecurity/trivy)
