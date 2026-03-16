# WTF are Security Headers?

Security Headers are HTTP response headers that tell browsers to enable security features. They protect against XSS, clickjacking, MIME sniffing, and other attacks. Setting them is one of the easiest security wins: a few lines of server config can block entire categories of attacks.

```
Key security headers:

  Content-Security-Policy     Block unauthorized scripts/resources
  Strict-Transport-Security   Force HTTPS for future visits
  X-Content-Type-Options      Prevent MIME type sniffing
  X-Frame-Options             Prevent clickjacking (iframes)
  Referrer-Policy             Control what's sent in Referer header
  Permissions-Policy          Disable camera, mic, geolocation

Example response:
  HTTP/1.1 200 OK
  Strict-Transport-Security: max-age=31536000
  X-Content-Type-Options: nosniff
  X-Frame-Options: DENY
  Referrer-Policy: strict-origin-when-cross-origin
```

**Examples:** [helmet](https://github.com/helmetjs/helmet), [SecurityHeaders.com](https://securityheaders.com/), [django-secure](https://github.com/carljm/django-secure)
