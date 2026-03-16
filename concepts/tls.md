# WTF is TLS?

TLS (Transport Layer Security) encrypts communication between two parties so nobody in between can read or tamper with the data. The client and server perform a handshake to agree on encryption keys, verify the server's identity via certificates, then encrypt everything after that. TLS 1.3 is the current version, doing the handshake in one round-trip.

```
Client                         Server
  |--- ClientHello ------------->|  (supported ciphers)
  |<-- ServerHello + Cert -------|  (chosen cipher + certificate)
  |--- Key Exchange + Finished ->|
  |<-- Finished -----------------|
  |                              |
  |==== Encrypted traffic =======|
```

**Examples:** [OpenSSL](https://github.com/openssl/openssl), [rustls](https://github.com/rustls/rustls), [BoringSSL](https://github.com/google/boringssl)
