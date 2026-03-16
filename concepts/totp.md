# WTF is TOTP?

TOTP (Time-based One-Time Password) generates a 6-digit code that changes every 30 seconds, based on a shared secret and the current time. When you set up an authenticator app by scanning a QR code, you're sharing that secret. Both your phone and the server independently compute the same code at the same time.

```
Setup: server generates secret, you scan QR code

  Shared secret: JBSWY3DPEHPK3PXP

  Every 30 seconds:
  ┌──────────┐                    ┌────────┐
  │  Phone   │                    │ Server │
  │          │                    │        │
  │ HMAC(    │                    │ HMAC(  │
  │  secret, │                    │ secret,│
  │  time/30)│                    │ time/30│
  │ = 483291 │                    │= 483291│
  └──────────┘                    └────────┘
       │                               │
       └───── user types 483291 ──────▶│
                                   Match? ✓
```

**Examples:** [otpauth](https://github.com/nicola/otpauth), [speakeasy](https://github.com/speakeasyjs/speakeasy), [pyotp](https://github.com/pyauth/pyotp)
