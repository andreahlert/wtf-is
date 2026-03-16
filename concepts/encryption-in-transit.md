# WTF is Encryption in Transit?

Encryption in Transit means data is encrypted while traveling between two points over a network. TLS/HTTPS is the most common example. Without it, anyone on the network path (ISPs, wifi snoopers, compromised routers) can read your data. With it, they see encrypted gibberish.

```
Without encryption in transit:
  Browser ──── password: hunter2 ────▶ Server
                  │
              Attacker on wifi reads it

With encryption in transit (TLS):
  Browser ──── 9f2a8b3c1d7e... ─────▶ Server
                  │
              Attacker sees gibberish

  ┌────────┐  TLS handshake  ┌────────┐
  │ Client │◀───────────────▶│ Server │
  └────────┘  encrypted data └────────┘
```

**Examples:** [Let's Encrypt](https://github.com/letsencrypt), [mkcert](https://github.com/FiloSottile/mkcert), [Certbot](https://github.com/certbot/certbot)
