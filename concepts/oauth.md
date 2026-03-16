# WTF is OAuth 2.0?

A protocol that lets a user grant a third-party app limited access to their account on another service, without sharing their password. When an app says "Sign in with Google" or "Connect your GitHub", that's OAuth. The app gets a token with specific permissions, not your credentials.

```
1. App says:       "I need access to your GitHub repos"
2. You click:      "Sign in with GitHub"
3. GitHub asks:    "Allow this app to read your repos?"
4. You click:      "Yes"
5. GitHub gives:   app gets a token (not your password)
6. App uses:       token to read repos (and only repos)

  [Your App] ──→ [GitHub] ──→ [User: "Allow?"] ──→ [Yes]
                                                      │
  [Your App] ←── [token: read:repos only] ←──────────┘
```

**Examples:** "Sign in with [Google](https://developers.google.com/identity)/[GitHub](https://docs.github.com/en/apps/oauth-apps)/[Apple](https://developer.apple.com/sign-in-with-apple/)", [Slack integrations](https://api.slack.com/authentication/oauth-v2), any "Connect your account" flow
