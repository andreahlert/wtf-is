# WTF is OCSP?

OCSP (Online Certificate Status Protocol) lets browsers check if a TLS certificate has been revoked without downloading a massive revocation list. The browser asks an OCSP responder "is this cert still valid?" and gets a signed yes/no answer. OCSP stapling improves this by having the server fetch the response and include it in the TLS handshake, so the browser doesn't need to make a separate request.

```
Without stapling:              With stapling:

Browser     OCSP     Server    Browser          Server    OCSP
  |          |         |         |                |         |
  |--TLS---->|         |         |                |<-fetch--|
  |  get cert|         |         |                | response|
  |--------->| check   |         |--TLS---------->|         |
  |<-valid---|         |         |  cert + stapled|         |
  |                              |  OCSP response |         |
                                 |  (no extra hop)|         |
```

**Examples:** [OpenSSL](https://github.com/openssl/openssl), [cfssl](https://github.com/cloudflare/cfssl), [boulder (Let's Encrypt)](https://github.com/letsencrypt/boulder)
