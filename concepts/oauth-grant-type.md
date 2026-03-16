# WTF is OAuth Grant Type?

OAuth Grant Types are the different flows for obtaining an access token, each designed for a specific scenario. Authorization Code is for web apps with a backend. Client Credentials is for machine-to-machine. Device Code is for TVs and CLIs. Each balances security and usability for its context.

```
Common grant types:

  Authorization Code (+ PKCE)
    Best for: web/mobile apps with users
    Flow: redirect → login → code → token

  Client Credentials
    Best for: service-to-service (no user)
    Flow: client_id + secret → token

  Device Code
    Best for: TVs, CLIs (no browser)
    Flow: show code on screen → user enters
          on phone → token

  Refresh Token
    Best for: getting new access tokens
    Flow: refresh_token → new access_token

  ✗ Implicit (deprecated, insecure)
  ✗ Password (deprecated, insecure)
```

**Examples:** [Auth0 Grant Types](https://auth0.com/docs/get-started/applications/application-grant-types), [OAuth 2.0 Simplified](https://www.oauth.com/), [Keycloak](https://github.com/keycloak/keycloak)
