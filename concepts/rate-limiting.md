# WTF is Rate Limiting?

Capping how many requests a client can make in a given time window. It protects your services from being overwhelmed by too much traffic, whether from a bug, abuse, or a DDoS attack.

```
Client: request request request request request
                                    |
                              [Rate Limiter]
                              max 3 req/sec
                                    |
                     allowed: ✓  ✓  ✓  ✗  ✗
                                       429 Too Many Requests
```

**Examples:** [Kong Rate Limiting](https://github.com/Kong/kong), [Envoy](https://github.com/envoyproxy/envoy), [Traefik](https://github.com/traefik/traefik)
