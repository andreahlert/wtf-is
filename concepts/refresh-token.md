# WTF is Refresh Token?

A Refresh Token is a long-lived credential used to get new access tokens without making the user log in again. Access tokens expire quickly (minutes/hours) for security. When one expires, the app sends the refresh token to get a fresh access token. If the refresh token is compromised, it can be revoked server-side.

```
  ┌──────┐  login  ┌────────┐
  │ User │────────▶│ Server │
  └──────┘         └────────┘
                       │
              returns: access_token  (expires in 15min)
                       refresh_token (expires in 30 days)

  15 minutes later, access_token expired:

  ┌──────┐  refresh_token  ┌────────┐
  │ App  │────────────────▶│ Server │
  └──────┘                 └────────┘
                               │
                  returns: new access_token
                           (optionally new refresh_token)

  User never re-enters password.
  Stolen access token? Only works 15 min.
```

**Examples:** [Auth0](https://auth0.com/docs/secure/tokens/refresh-tokens), [Keycloak](https://github.com/keycloak/keycloak), [NextAuth.js](https://github.com/nextauthjs/next-auth)
