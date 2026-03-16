# WTF is SSRF?

SSRF (Server-Side Request Forgery) is when an attacker tricks a server into making HTTP requests to internal resources the attacker can't reach directly. If an app fetches URLs based on user input (like "enter an image URL"), the attacker can point it to `http://169.254.169.254/` (cloud metadata) or internal services behind the firewall.

```
Attacker → App: "fetch http://169.254.169.254/credentials"

┌──────────┐         ┌──────────┐         ┌──────────────┐
│ Attacker │────X────│  Server  │────✓────│ Internal API │
│ (public) │ blocked │  (app)   │ allowed │ / metadata   │
└──────────┘         └──────────┘         └──────────────┘
                          │
                          ▼
                    Returns internal
                    data to attacker
```

**Examples:** [ssrf-sheriff](https://github.com/teknogeek/ssrf-sheriff), [Semgrep](https://github.com/semgrep/semgrep), [nuclei](https://github.com/projectdiscovery/nuclei)
