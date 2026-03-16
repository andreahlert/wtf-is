# WTF is Forward Proxy?

A forward proxy sits in front of clients and forwards their requests to the internet. The client explicitly configures the proxy, and all outbound traffic flows through it. It's used for access control (blocking sites), anonymity (hiding client IPs), caching, and corporate network policies. The destination server sees the proxy's IP, not the client's.

```
Without proxy:
  Client ──────────────────────> Server
  (server sees client IP)

With forward proxy:
  Client ──> Forward Proxy ──> Server
  (server sees proxy IP)

Corporate network example:
  Employee A ──┐
  Employee B ──┼──> Forward Proxy ──> Internet
  Employee C ──┘
               Policy: block social media
               Log: who accessed what
               Cache: shared downloads
```

**Examples:** [Squid](https://github.com/squid-cache/squid), [tinyproxy](https://github.com/tinyproxy/tinyproxy), [Privoxy](https://github.com/nicedreams/privoxy)
