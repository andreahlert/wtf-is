# WTF is SSO?

SSO (Single Sign-On) lets users log in once and access multiple applications without re-authenticating. You log into Okta in the morning, and Slack, Jira, GitHub, and your internal tools all recognize you without separate logins. Under the hood, it uses protocols like SAML or OpenID Connect to share authentication state.

```
Without SSO:
  Slack  → login with password
  Jira   → login with password
  GitHub → login with password
  Email  → login with password

With SSO:
  ┌──────┐   one login   ┌──────────┐
  │ User │───────────────▶│ IdP      │
  └──────┘                │ (Okta)   │
                          └──────────┘
                           ╱  │  ╲
                          ╱   │   ╲
                    Slack  Jira  GitHub  Email
                    ✓      ✓     ✓       ✓
                    All trust the IdP session
```

**Examples:** [Okta](https://www.okta.com/), [Keycloak](https://github.com/keycloak/keycloak), [Auth0](https://auth0.com/)
