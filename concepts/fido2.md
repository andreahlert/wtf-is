# WTF is FIDO2?

FIDO2 is a standard for passwordless authentication using hardware security keys or platform authenticators (like fingerprint readers). Instead of passwords, your device creates a cryptographic key pair per site. The private key never leaves your device. It's phishing-resistant because the key is bound to the site's origin, so a fake site can't request it.

```
Registration:
  Browser → "Create key pair for example.com"
  Device  → stores private key, sends public key to server

Login:
  ┌────────┐  challenge   ┌────────┐
  │ Server │─────────────▶│ Browser│
  └────────┘              └────────┘
                               │
                          ┌────────┐
                          │ Device │ signs challenge
                          │(YubiKey│ with private key
                          │/Touch) │
                          └────────┘
                               │
                          signature sent to server
                          server verifies with public key ✓

  Phishing-proof: key only works for example.com's origin
```

**Examples:** [YubiKey](https://www.yubico.com/), [WebAuthn spec](https://www.w3.org/TR/webauthn/), [SimpleWebAuthn](https://github.com/MasterKale/SimpleWebAuthn)
