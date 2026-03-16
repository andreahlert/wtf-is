# WTF is HTTP/3?

HTTP/3 is the latest version of HTTP, built on QUIC instead of TCP. This eliminates head-of-line blocking at the transport layer because each stream is independent. If one stream loses a packet, the others keep flowing. It also has faster connection setup since QUIC bakes TLS into the handshake.

```
HTTP/2 over TCP              HTTP/3 over QUIC
┌──────────────┐             ┌──────────────┐
│  HTTP/2      │             │  HTTP/3      │
├──────────────┤             ├──────────────┤
│  TLS 1.2+   │             │  QUIC        │
├──────────────┤             │  (TLS 1.3   │
│  TCP         │             │   built-in)  │
├──────────────┤             ├──────────────┤
│  IP          │             │  UDP         │
└──────────────┘             ├──────────────┤
                             │  IP          │
                             └──────────────┘
```

**Examples:** [quiche (Cloudflare)](https://github.com/cloudflare/quiche), [quinn](https://github.com/quinn-rs/quinn), [curl](https://github.com/curl/curl)
