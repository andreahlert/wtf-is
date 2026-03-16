# WTF is Asymmetric Encryption?

Asymmetric Encryption uses a pair of keys: a public key (anyone can have it) and a private key (only you have it). Data encrypted with the public key can only be decrypted with the private key. It solves the key distribution problem of symmetric encryption but is much slower, so it's typically used to exchange symmetric keys.

```
Key pair: public key + private key

  Encrypt with public key → only private key decrypts
  Sign with private key   → anyone with public key verifies

  Alice (has Bob's public key)        Bob (has private key)
  "hello" ──[Bob's pub]──▶ x9f2a ──[Bob's priv]──▶ "hello"

  Anyone can encrypt TO Bob.
  Only Bob can decrypt.
```

**Examples:** [OpenSSL](https://github.com/openssl/openssl), [GPG](https://gnupg.org/), [age](https://github.com/FiloSottile/age)
