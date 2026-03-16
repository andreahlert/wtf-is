# WTF is DNS over HTTPS?

DNS over HTTPS (DoH) encrypts DNS queries by sending them as regular HTTPS requests to a resolver. Without it, your ISP (and anyone on the network) can see every domain you look up. DoH wraps DNS in TLS encryption, making queries indistinguishable from normal web traffic. The tradeoff is that it centralizes DNS through a few big providers.

```
Traditional DNS:                DNS over HTTPS:

App --> DNS query (plain text)  App --> HTTPS POST
        port 53                        https://1.1.1.1/dns-query
        |                              |
     Anyone on the path             Encrypted, looks like
     can read/modify it             normal HTTPS traffic
        |                              |
     DNS Resolver                   DoH Resolver
        |                              |
     Response (plain text)          Response (encrypted)
```

**Examples:** [cloudflared](https://github.com/cloudflare/cloudflared), [dnscrypt-proxy](https://github.com/DNSCrypt/dnscrypt-proxy), [Firefox DoH](https://support.mozilla.org/en-US/kb/firefox-dns-over-https)
