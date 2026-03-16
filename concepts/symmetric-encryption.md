# WTF is Symmetric Encryption?

Symmetric Encryption uses the same key to encrypt and decrypt data. It's fast and efficient, used for encrypting files, database fields, and network traffic. The hard part is sharing the key securely: if anyone gets the key, they can decrypt everything.

```
Same key for both operations:

  Plaintext ──[ Key A ]──▶ Ciphertext
  Ciphertext ──[ Key A ]──▶ Plaintext

  Alice                         Bob
  "hello" ──AES(key)──▶ x9f2a ──AES(key)──▶ "hello"

  Problem: how do Alice and Bob share the key safely?
  Solution: use asymmetric encryption to exchange the
            symmetric key (this is how TLS works)
```

**Examples:** [OpenSSL](https://github.com/openssl/openssl), [libsodium](https://github.com/jedisct1/libsodium), [Web Crypto API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Crypto_API)
