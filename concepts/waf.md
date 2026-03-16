# WTF is WAF?

A WAF (Web Application Firewall) sits in front of your web app and inspects HTTP traffic for attacks like SQL injection, XSS, and path traversal. Unlike a regular firewall that works at the network layer (IP/port), a WAF understands HTTP and can look at request bodies, headers, cookies, and URL parameters to block malicious requests.

```
Regular Firewall:                WAF:
  Checks: IP, port, protocol      Checks: HTTP content

Internet --> WAF --> App Server

Request: POST /login
Body: username=admin&password=' OR 1=1 --

WAF inspects body:
  ✗ SQL injection pattern detected
  → 403 Forbidden (blocked)

Request: GET /api/users
  ✓ Clean request
  → Forwarded to app server
```

**Examples:** [ModSecurity](https://github.com/owasp-modsecurity/ModSecurity), [Coraza](https://github.com/corazawaf/coraza), [lua-resty-waf](https://github.com/p0pr0ck5/lua-resty-waf)
