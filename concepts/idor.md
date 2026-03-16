# WTF is IDOR?

IDOR (Insecure Direct Object Reference) is when an app exposes internal object IDs (like `/api/invoices/1234`) and doesn't check if the requesting user is authorized to access that object. An attacker just changes the ID in the URL to access other users' data. The fix is always checking ownership on the server side.

```
GET /api/invoices/1001  → Your invoice    ✓
GET /api/invoices/1002  → Someone else's  ✗ (should be 403)

┌─────────┐    /user/42/profile    ┌──────────┐
│ User 99 │───────────────────────▶│  Server  │
└─────────┘                        └──────────┘
                                        │
                        Missing check:  user_id == 99?
                                        │
                                        ▼
                                   Returns user 42's data
```

**Examples:** [OWASP ZAP](https://github.com/zaproxy/zaproxy), [Burp Suite](https://portswigger.net/burp), [Autorize](https://github.com/PortSwigger/autorize)
