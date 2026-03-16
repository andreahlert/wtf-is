# WTF is MFA?

MFA (Multi-Factor Authentication) requires two or more different types of proof to verify identity: something you know (password), something you have (phone, security key), or something you are (fingerprint). Even if an attacker steals your password, they can't log in without the second factor.

```
Factors:

  Something you KNOW    → password, PIN
  Something you HAVE    → phone (TOTP), security key (FIDO2)
  Something you ARE     → fingerprint, face

  Login with MFA:
  ┌──────────┐   password    ┌────────┐
  │   User   │──────────────▶│ Server │
  └──────────┘               └────────┘
       │                          │
       │◀── "Enter 6-digit code" ─┘
       │
  ┌──────────┐   TOTP code
  │   Phone  │──  483291  ──▶ Verified ✓
  └──────────┘

  Password alone stolen? Not enough.
```

**Examples:** [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2), [Authy](https://authy.com/), [YubiKey](https://www.yubico.com/)
