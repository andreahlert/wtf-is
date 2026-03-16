# WTF is Sensitive Data Exposure?

Sensitive Data Exposure happens when an application fails to protect data like passwords, credit cards, health records, or API keys. Common causes: storing passwords in plaintext, not using HTTPS, logging sensitive fields, returning too much data in API responses, or keeping secrets in source code.

```
Where data leaks:

  Source code  →  API_KEY = "sk-live-abc123"
  Logs         →  INFO: User login { password: "hunter2" }
  API response →  { ssn: "123-45-6789", name: "..." }
  Database     →  passwords stored as plaintext
  Transit      →  HTTP instead of HTTPS

Fix: encrypt, mask, minimize, rotate
```

**Examples:** [git-secrets](https://github.com/awslabs/git-secrets), [truffleHog](https://github.com/trufflesecurity/trufflehog), [detect-secrets](https://github.com/Yelp/detect-secrets)
