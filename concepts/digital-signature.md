# WTF is Digital Signature?

A Digital Signature proves that a message or file was created by a specific person and hasn't been modified. The signer uses their private key to create the signature, and anyone can verify it with the corresponding public key. It's used for signing commits, packages, emails, documents, and software releases.

```
Signing (private key):
  Document + Private Key → Signature

Verifying (public key):
  Document + Signature + Public Key → Valid/Invalid

  ┌────────┐                        ┌────────┐
  │ Author │  signs with priv key   │ Reader │
  │        │──── doc + signature ──▶│        │
  └────────┘                        └────────┘
                                    verifies with pub key
                                    ✓ authentic + unmodified
```

**Examples:** [GPG](https://gnupg.org/), [Sigstore/cosign](https://github.com/sigstore/cosign), [minisign](https://github.com/jedisct1/minisign)
