# WTF is Let's Encrypt?

Let's Encrypt is a free, automated Certificate Authority that issues TLS certificates so anyone can enable HTTPS without paying. It uses the ACME protocol to verify you own a domain and issues certificates that last 90 days, encouraging automated renewal. It's the reason HTTPS became the default on the web.

```
Your Server                Let's Encrypt
  |                              |
  |--- "I want a cert for       |
  |     example.com" ----------->|
  |                              |
  |<-- "Prove you own it:       |
  |     put this token at       |
  |     /.well-known/acme/..." --|
  |                              |
  |--- (places token) --------->|
  |                              |
  |<-- "Here's your cert" ------|
  |    (valid 90 days)          |
```

**Examples:** [certbot](https://github.com/certbot/certbot), [Caddy (auto-HTTPS)](https://github.com/caddyserver/caddy), [acme.sh](https://github.com/acmesh-official/acme.sh)
