# WTF is Anycast?

Anycast is a routing technique where multiple servers in different locations share the same IP address. When you send a packet to an anycast IP, the network routes it to the nearest server based on BGP routing. This is how CDNs and DNS services (like 1.1.1.1 or 8.8.8.8) serve you from the closest data center without you knowing.

```
User in Tokyo            User in London
     |                        |
     v                        v
  Same IP: 1.2.3.4        Same IP: 1.2.3.4
     |                        |
     v                        v
  Server in Tokyo         Server in London
  (nearest by BGP)        (nearest by BGP)

Both servers announce 1.2.3.4 via BGP.
The network picks the closest one.
```

**Examples:** [Cloudflare (1.1.1.1)](https://www.cloudflare.com/), [Google Public DNS (8.8.8.8)](https://developers.google.com/speed/public-dns), [Fly.io](https://github.com/superfly/flyctl)
