# WTF is Passkey?

A Passkey is a FIDO2 credential that syncs across your devices through your platform's cloud (iCloud Keychain, Google Password Manager). Unlike a hardware security key that's tied to one device, passkeys let you authenticate on any device using biometrics or screen lock. They replace passwords entirely: no password to remember, phish, or leak.

```
Traditional password:
  User remembers "hunter2" → types it → phishable, reusable

Passkey:
  ┌──────────┐  "Log in to example.com"  ┌────────┐
  │  Phone   │◀──────────────────────────│ Server │
  │          │                           └────────┘
  │ Face ID? │
  │   ✓      │
  │          │── signed challenge ──────▶ Verified ✓
  └──────────┘

  ● No password to remember or type
  ● Phishing-proof (bound to site origin)
  ● Syncs via iCloud/Google across devices
  ● Biometric unlock, not a shared secret
```

**Examples:** [passkeys.dev](https://passkeys.dev/), [SimpleWebAuthn](https://github.com/MasterKale/SimpleWebAuthn), [Apple Passkeys](https://developer.apple.com/passkeys/)
