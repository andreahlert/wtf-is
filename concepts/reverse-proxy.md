# WTF is a Reverse Proxy?

A server that sits in front of your backend servers and forwards client requests to them. The client never talks to your backend directly. It can handle SSL termination, caching, compression, and routing requests to different backends based on the URL path.

```
Without reverse proxy:
  Client ──→ your-app:3000    (exposed directly)

With reverse proxy:
  Client ──→ [Nginx :443] ──→ your-app:3000
                  │
                  ├── /api  → backend:8080
                  ├── /     → frontend:3000
                  └── handles SSL, caching, rate limiting
```

**Examples:** [Nginx](https://github.com/nginx/nginx), [Caddy](https://github.com/caddyserver/caddy), [Traefik](https://github.com/traefik/traefik), [HAProxy](https://github.com/haproxy/haproxy)
