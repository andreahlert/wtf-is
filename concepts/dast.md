# WTF is DAST?

DAST (Dynamic Application Security Testing) tests a running application from the outside by sending malicious requests and observing responses. It doesn't look at source code. It acts like an automated attacker, probing for XSS, injection, misconfigurations, and other vulnerabilities that only appear at runtime.

```
  ┌──────────┐    HTTP requests     ┌─────────────┐
  │   DAST   │─────────────────────▶│ Running App │
  │  Scanner │◀─────────────────────│ (black box) │
  └──────────┘    HTTP responses    └─────────────┘
       │
       ▼
  "Reflected XSS found at /search?q=<script>"
  "SQL error message exposed at /login"

  Pros: Finds real runtime bugs, no source needed
  Cons: Slow, late in pipeline, can't pinpoint code line
```

**Examples:** [OWASP ZAP](https://github.com/zaproxy/zaproxy), [Nuclei](https://github.com/projectdiscovery/nuclei), [Burp Suite](https://portswigger.net/burp)
