# WTF is Cookie Security?

Cookie Security is about setting the right flags on cookies so attackers can't steal or misuse them. Without proper flags, cookies can be read by JavaScript (XSS), sent over HTTP (intercepted), or included in cross-site requests (CSRF). Four flags matter most: HttpOnly, Secure, SameSite, and Path.

```
Set-Cookie: session=abc123; HttpOnly; Secure; SameSite=Lax

  HttpOnly   JS can't read it (blocks XSS cookie theft)
  Secure     Only sent over HTTPS (blocks network sniffing)
  SameSite   Controls cross-site sending:
               Strict = never cross-site
               Lax    = only on navigation (default)
               None   = always (requires Secure)
  Path       Limits which paths receive the cookie

  ✗ Set-Cookie: session=abc123
    → JS readable, sent over HTTP, sent cross-site

  ✓ Set-Cookie: session=abc123; HttpOnly; Secure;
    SameSite=Lax; Path=/
```

**Examples:** [helmet](https://github.com/helmetjs/helmet), [cookie (npm)](https://github.com/jshttp/cookie), [Django CSRF cookies](https://github.com/django/django)
