# WTF is a JWT?

JSON Web Token. A signed piece of JSON that a server gives to a client to prove identity. The client sends it with every request (usually in a header). The server can verify it without hitting a database because the signature proves it hasn't been tampered with. It's not encrypted by default, anyone can read the contents, but nobody can modify them.

```
Structure (3 parts, base64 encoded, separated by dots):

  eyJhbGci.eyJzdWIi.SflKxwRJ
  ├─ header ─┤├─ payload ─┤├─ signature ─┤

Header:    { "alg": "HS256" }
Payload:   { "sub": "user-42", "role": "admin", "exp": 1717200000 }
Signature: HMAC(header + payload, secret)

Server verifies:
  1. Decode token
  2. Recalculate signature with its secret
  3. Matches? → trust the payload. Doesn't match? → reject.
```

**Examples:** Used in most modern auth systems, often paired with [OAuth 2.0](https://oauth.net/2/)
