# WTF is SAML?

SAML (Security Assertion Markup Language) is an XML-based protocol for exchanging authentication data between an Identity Provider (IdP) and a Service Provider (SP). When you click "Login with Okta" on a work app, SAML is likely handling it. The IdP authenticates you and sends a signed XML assertion to the SP saying "this user is legit."

```
  ┌──────┐     1. "I want to log in"    ┌──────────┐
  │ User │──────────────────────────────▶│ App (SP) │
  └──────┘                               └──────────┘
      │                                       │
      │  2. Redirect to IdP                   │
      ▼                                       │
  ┌──────────┐                                │
  │ IdP      │  3. User authenticates         │
  │ (Okta)   │                                │
  └──────────┘                                │
      │                                       │
      │  4. Signed SAML assertion             │
      └──────────────────────────────────────▶│
                                         5. User logged in
```

**Examples:** [Okta](https://www.okta.com/), [OneLogin](https://github.com/onelogin/ruby-saml), [Auth0](https://auth0.com/)
