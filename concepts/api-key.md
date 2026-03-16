# WTF is API Key?

An API Key is a simple string token passed with API requests to identify the calling application (not the user). It's like a password for your app to access a service. API keys are easy to implement but weak for security: they don't expire by default, get leaked in source code constantly, and don't identify individual users.

```
Request:
  GET /api/weather?city=berlin
  Authorization: Bearer sk-abc123xyz

  Server checks: is sk-abc123xyz valid? → ✓ allow

  API Key vs OAuth Token:
  ┌────────────────┬───────────────────┐
  │   API Key      │  OAuth Token      │
  ├────────────────┼───────────────────┤
  │ Identifies app │ Identifies user   │
  │ No expiry      │ Expires           │
  │ No scopes      │ Scoped            │
  │ Static secret  │ Rotatable         │
  │ Simple         │ More secure       │
  └────────────────┴───────────────────┘
```

**Examples:** [Unkey](https://github.com/unkeyed/unkey), [Stripe API Keys](https://stripe.com/docs/keys), [OpenAI API](https://platform.openai.com/docs/api-reference/authentication)
