# WTF is HSTS?

HSTS (HTTP Strict Transport Security) is a response header that tells browsers to only connect to your site over HTTPS, never HTTP. Once a browser sees this header, it will automatically upgrade any HTTP request to HTTPS for the specified duration. This prevents downgrade attacks where someone intercepts the initial HTTP request before the redirect to HTTPS.

```
First visit:
Browser --- http://example.com ---> Server
Browser <-- 301 + HSTS header ----- Server
        Strict-Transport-Security: max-age=31536000

Every visit after:
Browser --- https://example.com --> Server
        (browser upgrades automatically,
         never tries HTTP again for 1 year)
```

**Examples:** [NGINX](https://github.com/nginx/nginx), [Caddy](https://github.com/caddyserver/caddy), [hstspreload.org](https://hstspreload.org/)
