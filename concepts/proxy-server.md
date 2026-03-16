# WTF is Proxy Server?

A proxy server sits between a client and a destination server, forwarding requests on the client's behalf. It can cache responses, filter content, hide the client's IP, or add security controls. Forward proxies serve clients (like a corporate web filter), while reverse proxies serve servers (like a load balancer in front of your app).

```
Forward Proxy (serves clients):
  Client --> Proxy --> Internet
  (hides client identity, filters content)

Reverse Proxy (serves servers):
  Internet --> Proxy --> Backend servers
  (load balancing, SSL termination, caching)

  Client            Proxy              Servers
    |                 |                  |
    |-- request ----->|-- forward ------>|
    |<-- response ----|<-- response -----|
    |                 |                  |
    Client sees       Proxy may cache,
    proxy's IP        compress, or filter
```

**Examples:** [Squid](https://github.com/squid-cache/squid), [NGINX](https://github.com/nginx/nginx), [mitmproxy](https://github.com/mitmproxy/mitmproxy)
