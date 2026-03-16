# WTF is Cache-Control?

Cache-Control is an HTTP header that tells browsers and CDNs how long they can cache a response and under what conditions. It replaces the older Expires header with fine-grained directives. `max-age=3600` means cache for one hour. `no-store` means never cache. `public` means CDNs can cache it. `private` means only the browser can.

```
Server response:
  Cache-Control: public, max-age=86400

  Browser: caches for 24 hours, no request needed
  CDN: also caches for 24 hours

Common directives:
  max-age=N       Cache for N seconds
  no-cache        Must revalidate with server (ETag/Last-Modified)
  no-store        Don't cache at all (sensitive data)
  public          CDNs and shared caches can store it
  private         Only the end-user's browser can cache
  immutable       Never changes (used with hashed filenames)

  Static assets:  Cache-Control: public, max-age=31536000, immutable
  API responses:  Cache-Control: no-cache
  Auth pages:     Cache-Control: no-store
```

**Examples:** [Varnish](https://github.com/varnishcache/varnish-cache), [NGINX](https://github.com/nginx/nginx), [Caddy](https://github.com/caddyserver/caddy)
