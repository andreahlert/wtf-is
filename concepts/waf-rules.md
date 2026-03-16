# WTF are WAF Rules?

WAF Rules are patterns that a Web Application Firewall uses to inspect HTTP requests and block malicious ones before they reach your app. Rules match against request paths, headers, query strings, and bodies looking for attack signatures like SQL injection, XSS payloads, or known exploit patterns.

```
Incoming request:
  GET /search?q=<script>alert(1)</script>

WAF checks rules:
  ┌────────────────────────────────────┐
  │ Rule 941100: XSS pattern detected  │ → BLOCK
  │ Rule 942100: SQL injection check   │ → PASS
  │ Rule 930120: Path traversal check  │ → PASS
  │ Custom:      Rate limit > 100/min  │ → PASS
  └────────────────────────────────────┘

  Result: request blocked, 403 returned

  Rule types:
    Managed rules  → vendor-maintained (OWASP CRS)
    Custom rules   → you define (block specific IPs, paths)
    Rate rules     → limit requests per IP/session
```

**Examples:** [ModSecurity](https://github.com/owasp-modsecurity/ModSecurity), [OWASP CRS](https://github.com/coreruleset/coreruleset), [AWS WAF](https://aws.amazon.com/waf/)
