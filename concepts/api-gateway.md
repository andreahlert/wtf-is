# WTF is an API Gateway?

A single entry point that sits between clients and your backend services. It routes requests to the right service, handles authentication, rate limiting, and response transformation so your services don't have to.

```
Client Request
      |
      v
+-------------+
| API Gateway |
+-------------+
  |    |    |
  v    v    v
Svc1 Svc2 Svc3
```

**Examples:** [Kong](https://github.com/Kong/kong), [Traefik](https://github.com/traefik/traefik), [APISIX](https://github.com/apache/apisix)
