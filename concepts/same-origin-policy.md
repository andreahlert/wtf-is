# WTF is Same-Origin Policy?

Same-Origin Policy is the browser's fundamental security rule: JavaScript on one origin (protocol + host + port) cannot read data from a different origin. This prevents evil.com from reading your bank.com cookies or API responses. CORS is the mechanism for explicitly allowing cross-origin access when needed.

```
Origin = protocol + host + port

  https://example.com:443/page
  ^^^^^^   ^^^^^^^^^^^  ^^^
  protocol    host      port

Same origin:
  https://example.com/a  →  https://example.com/b  ✓

Different origin:
  https://example.com    →  https://api.example.com  ✗
  https://example.com    →  http://example.com        ✗
  https://example.com    →  https://example.com:8080  ✗

  evil.com JS tries: fetch("https://bank.com/balance")
  Browser blocks reading the response.
```

**Examples:** [MDN Same-Origin Policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy), [CORS middleware](https://github.com/expressjs/cors), [helmet](https://github.com/helmetjs/helmet)
