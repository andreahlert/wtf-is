# WTF is OAuth Scope?

OAuth Scopes define what specific permissions an access token grants. When an app asks "Allow access to your GitHub repos?", those permissions are scopes like `repo:read` or `user:email`. The user sees what's being requested and can consent. The token is then limited to only those scopes.

```
Authorization request:
  "App X wants access to your GitHub account"

  Requested scopes:
  ☑ repo:read     (read your repositories)
  ☑ user:email    (read your email)
  ☐ repo:delete   (NOT requested)

  User clicks "Authorize"
       │
       ▼
  Token issued with scopes: [repo:read, user:email]

  App tries: DELETE /repos/my-repo
  Server: "Token doesn't have repo:delete scope" → 403

  Principle of least privilege applied to API access.
```

**Examples:** [GitHub OAuth Scopes](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/scopes-for-oauth-apps), [Google OAuth Scopes](https://developers.google.com/identity/protocols/oauth2/scopes), [Auth0](https://auth0.com/)
