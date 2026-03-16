# WTF is SOCKS Proxy?

A SOCKS proxy forwards any TCP (and optionally UDP) traffic, not just HTTP. Unlike an HTTP proxy that only understands web requests, SOCKS works at a lower level and can tunnel any protocol: SSH, FTP, database connections, whatever. SOCKS5 is the current version and supports authentication and UDP.

```
HTTP Proxy:                    SOCKS Proxy:
  Only HTTP/HTTPS traffic        Any TCP/UDP traffic

  Browser --> HTTP Proxy         App --> SOCKS Proxy
  (understands HTTP)             (protocol-agnostic)

Example with SSH tunnel as SOCKS proxy:
  ssh -D 1080 user@server

  Browser ──┐
  curl ─────┼──> localhost:1080 ──> SSH server ──> Internet
  git ──────┘    (SOCKS5 proxy)     (exit node)

All traffic exits from the SSH server's IP,
regardless of protocol.
```

**Examples:** [Dante](https://github.com/notpeter/dante), [microsocks](https://github.com/rofl0r/microsocks), [gost](https://github.com/ginuerzh/gost)
