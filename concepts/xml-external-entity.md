# WTF is XML External Entity (XXE)?

XXE is an attack against applications that parse XML input. XML allows defining "external entities" that reference files or URLs. If the parser processes these, an attacker can read local files like `/etc/passwd`, trigger SSRF, or cause denial of service. The fix is disabling external entity processing in your XML parser.

```
Malicious XML:
┌──────────────────────────────────────┐
│ <?xml version="1.0"?>                │
│ <!DOCTYPE foo [                      │
│   <!ENTITY xxe SYSTEM "file:///etc/  │
│   passwd">                           │
│ ]>                                   │
│ <data>&xxe;</data>                   │
└──────────────────────────────────────┘
         │
         ▼
  Parser resolves &xxe; → contents of /etc/passwd
  Server returns file contents to attacker
```

**Examples:** [OWASP ZAP](https://github.com/zaproxy/zaproxy), [libxml2 (noent disabled)](https://github.com/GNOME/libxml2), [Semgrep](https://github.com/semgrep/semgrep)
