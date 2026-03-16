# WTF is Broken Authentication?

Broken Authentication covers any flaw that lets attackers compromise passwords, session tokens, or identity checks. This includes weak password policies, missing brute-force protection, exposed session IDs in URLs, not invalidating tokens on logout, and using predictable credentials. If someone can hijack your login flow, authentication is broken.

```
Common failures:

  ✗  No rate limiting  →  Attacker tries 10k passwords/min
  ✗  Session in URL    →  /dashboard?sid=abc123 (leaks in logs)
  ✗  No token expiry   →  Stolen token works forever
  ✗  Default creds     →  admin/admin still works

  ✓  Rate limit + MFA + secure cookies + token rotation
```

**Examples:** [Keycloak](https://github.com/keycloak/keycloak), [Passport.js](https://github.com/jaredhanson/passport), [NextAuth.js](https://github.com/nextauthjs/next-auth)
