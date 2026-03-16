# WTF is Transparent Proxy?

A transparent proxy intercepts traffic without the client knowing it exists. The client doesn't need any proxy configuration; the network just redirects packets through the proxy automatically (usually via iptables or routing rules). It's used for content filtering in corporate/school networks, caching, and traffic inspection.

```
Regular proxy (client knows):
  Client --configured--> Proxy --> Server

Transparent proxy (client doesn't know):
  Client --> thinks it's talking to Server
         --> network redirects to Proxy
         --> Proxy forwards to Server

  Client          Router/Firewall        Proxy         Server
    |                   |                  |              |
    |--- packet to ---->|                  |              |
    |    server         |-- redirect ----->|              |
    |                   |  (iptables)      |-- forward -->|
    |<------------------------------------response-------|
    |  (client never knew about the proxy)
```

**Examples:** [Squid](https://github.com/squid-cache/squid), [mitmproxy](https://github.com/mitmproxy/mitmproxy), [tinyproxy](https://github.com/tinyproxy/tinyproxy)
