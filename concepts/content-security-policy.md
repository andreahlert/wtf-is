# WTF is Content Security Policy?

Content Security Policy (CSP) is an HTTP header that tells the browser which sources of content are allowed to load on your page. It prevents cross-site scripting (XSS) attacks by blocking inline scripts, unauthorized domains, and other injection vectors. If something tries to load from a source not in your policy, the browser blocks it.

```
Server response header:
Content-Security-Policy: default-src 'self';
                         script-src 'self' cdn.example.com;
                         img-src *;

Browser behavior:
  ✓ <script src="/app.js">           (same origin)
  ✓ <script src="cdn.example.com">   (allowed domain)
  ✗ <script>alert('xss')</script>    (inline blocked)
  ✗ <script src="evil.com/bad.js">   (not in policy)
  ✓ <img src="anywhere.com/pic.jpg"> (img-src: *)
```

**Examples:** [helmet.js](https://github.com/helmetjs/helmet), [csp-evaluator](https://csp-evaluator.withgoogle.com/), [report-uri](https://report-uri.com/)
