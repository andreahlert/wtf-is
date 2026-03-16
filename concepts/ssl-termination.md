# WTF is SSL Termination?

SSL termination is when a load balancer or reverse proxy handles the TLS encryption/decryption so your backend servers don't have to. The client connects with HTTPS to the proxy, the proxy decrypts the traffic, then forwards plain HTTP to your backends. This offloads CPU-heavy crypto work and centralizes certificate management.

```
Client            Load Balancer          Backend Servers
  |                    |                      |
  |== HTTPS (TLS) ===>|--- plain HTTP ------->|
  |== encrypted ======>|--- unencrypted ------>|
  |                    |                      |
  TLS ends here -------^
  (SSL termination point)
```

**Examples:** [NGINX](https://github.com/nginx/nginx), [HAProxy](https://github.com/haproxy/haproxy), [Envoy](https://github.com/envoyproxy/envoy)
