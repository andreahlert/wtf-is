# WTF is HMAC?

HMAC (Hash-based Message Authentication Code) is a way to verify both the integrity and authenticity of a message using a shared secret key and a hash function. Unlike a plain hash, HMAC proves the message wasn't tampered with AND that it came from someone who knows the secret key. It's used for webhook signatures, API authentication, and JWT signing.

```
  HMAC = hash(key + message)  (simplified)

  Webhook example:
  GitHub sends:
    Body: { "action": "push", ... }
    Header: X-Hub-Signature-256: sha256=a1b2c3...

  Your server:
    expected = HMAC-SHA256(webhook_secret, body)
    actual   = header value
    expected == actual? → genuine request from GitHub
```

**Examples:** [Node.js crypto.createHmac](https://nodejs.org/api/crypto.html), [Python hmac](https://docs.python.org/3/library/hmac.html), [libsodium](https://github.com/jedisct1/libsodium)
