# WTF is SNI?

SNI (Server Name Indication) is a TLS extension that lets the client tell the server which hostname it's trying to reach during the handshake. Without SNI, a server with multiple domains on the same IP address wouldn't know which TLS certificate to present. It's like saying the website name before the encrypted conversation starts.

```
Client                           Server (shared IP: 1.2.3.4)
  |                                |
  |--- ClientHello ------------->  |  hosts:
  |    SNI: shop.example.com      |    - shop.example.com
  |                                |    - blog.example.com
  |<-- Certificate for shop.* --- |    - api.example.com
  |                                |
  Server picks the right cert
  based on the SNI value
```

**Examples:** [NGINX](https://github.com/nginx/nginx), [Caddy](https://github.com/caddyserver/caddy), [Traefik](https://github.com/traefik/traefik)
