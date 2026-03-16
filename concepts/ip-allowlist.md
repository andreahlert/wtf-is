# WTF is IP Allowlist?

An IP Allowlist (formerly "whitelist") is a list of IP addresses that are permitted to access a resource. All other IPs are blocked. It's used to restrict access to admin panels, databases, internal APIs, or CI/CD systems to only known, trusted networks like your office or VPN.

```
  ┌────────────────────────────────┐
  │  IP Allowlist for /admin       │
  │                                │
  │  Allowed:                      │
  │    203.0.113.10  (office)      │
  │    198.51.100.0/24 (VPN)       │
  │                                │
  │  Request from 203.0.113.10     │
  │  → ✓ Allowed                   │
  │                                │
  │  Request from 192.168.1.50     │
  │  → ✗ Blocked (403)             │
  └────────────────────────────────┘

  Common uses:
    ● Database access (only app servers)
    ● Admin panels (only office/VPN IPs)
    ● Webhook senders (only GitHub/Stripe IPs)
```

**Examples:** [AWS Security Groups](https://aws.amazon.com/vpc/), [Cloudflare Access](https://www.cloudflare.com/products/zero-trust/access/), [nginx allow/deny](https://nginx.org/en/docs/http/ngx_http_access_module.html)
