# WTF is Zero Trust?

A security model where nothing is trusted by default, not even things inside your network. Every request must prove its identity and be authorized, regardless of where it comes from. The old model was "if you're inside the office network, you're trusted." Zero trust says "prove who you are every single time."

```
Old model (castle and moat):
  [Internet] ──firewall──→ [Internal Network]
                              └── "you're inside, trusted!"
                              └── lateral movement = easy for attackers

Zero Trust:
  [Internet] ──→ [verify identity] ──→ [authorize] ──→ [resource]
  [Internal] ──→ [verify identity] ──→ [authorize] ──→ [resource]
                    same checks regardless of location
```

**Examples:** [Google BeyondCorp](https://cloud.google.com/beyondcorp), [Cloudflare Zero Trust](https://www.cloudflare.com/zero-trust/), [Zscaler](https://www.zscaler.com/), [Tailscale](https://github.com/tailscale/tailscale)
