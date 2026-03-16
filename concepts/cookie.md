# WTF is Cookie?

A small piece of data (max ~4KB) stored in the browser and automatically sent with every HTTP request to the same domain. Originally invented for session tracking. Unlike localStorage, cookies have expiration dates, can be restricted to specific paths, and are accessible server-side. They are still the standard way to handle authentication tokens.

```
Server sets cookie:
  Set-Cookie: session=abc123; HttpOnly; Secure; Path=/

Browser stores it and sends it on EVERY request:
  GET /api/profile
  Cookie: session=abc123
```

**Examples:** [js-cookie](https://github.com/js-cookie/js-cookie), [cookie](https://github.com/jshttp/cookie), [tough-cookie](https://github.com/salesforce/tough-cookie)
