# WTF is CVE?

CVE (Common Vulnerabilities and Exposures) is a public catalog of known security vulnerabilities, each assigned a unique ID like CVE-2024-1234. When someone discovers a vulnerability in software, it gets a CVE number so everyone can refer to the same issue unambiguously. Security tools, advisories, and patches all reference CVE IDs.

```
CVE Lifecycle:

  Researcher finds bug
       │
       ▼
  Requests CVE ID from CNA (numbering authority)
       │
       ▼
  CVE-2024-12345 assigned
       │
       ▼
  Vendor patches, advisory published
       │
       ▼
  Scanners detect CVE in your dependencies
```

**Examples:** [CVE Database](https://cve.mitre.org/), [NVD](https://nvd.nist.gov/), [osv.dev](https://github.com/google/osv.dev)
