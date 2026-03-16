# WTF is OpenID Connect?

OpenID Connect (OIDC) is an identity layer built on top of OAuth 2.0. While OAuth handles authorization ("can this app access my photos?"), OIDC adds authentication ("who is this user?"). It returns an ID token (JWT) with user info like name, email, and unique ID. It's what powers "Login with Google/GitHub."

```
  ┌──────┐  1. Click "Login with Google"  ┌──────┐
  │ User │───────────────────────────────▶│ App  │
  └──────┘                                └──────┘
      │                                       │
      │  2. Redirect to Google                │
      ▼                                       │
  ┌──────────┐                                │
  │ Google   │  3. User logs in, consents     │
  │ (IdP)    │                                │
  └──────────┘                                │
      │  4. Returns authorization code        │
      └──────────────────────────────────────▶│
           5. App exchanges code for:
              - ID token (who they are)
              - Access token (API access)
```

**Examples:** [Auth0](https://auth0.com/), [Keycloak](https://github.com/keycloak/keycloak), [node-openid-client](https://github.com/panva/node-openid-client)
