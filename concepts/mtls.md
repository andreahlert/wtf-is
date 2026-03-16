# WTF is mTLS?

Mutual TLS. Normal TLS (HTTPS) only verifies the server ("am I talking to the real google.com?"). mTLS adds the reverse: the server also verifies the client. Both sides present certificates. Used for service-to-service communication where you need to guarantee both ends are who they claim to be.

```
Normal TLS:
  Client ──→ "show me your cert"  ──→ Server
  Client ←── [server certificate] ←──
  Client: "ok, I trust you" ✓
  Server: "I trust anyone" (no client verification)

mTLS:
  Client ──→ "show me your cert"  ──→ Server
  Client ←── [server certificate] ←──
  Server ──→ "show ME your cert"  ──→ Client
  Server ←── [client certificate] ←──
  Both: "we trust each other" ✓✓
```

**Examples:** Istio (service mesh), Kubernetes API server, Cloudflare Zero Trust
