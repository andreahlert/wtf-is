# WTF is CSRF?

CSRF (Cross-Site Request Forgery) tricks a logged-in user's browser into making unwanted requests to a site where they're authenticated. The attacker crafts a hidden form or image tag on a malicious page that submits a request (like transferring money) using the victim's session cookies. The server can't tell if the user intended the action.

```
Victim (logged into bank.com)
        │
        ▼  visits evil.com
┌─────────────────────────────┐
│  <img src="bank.com/        │
│   transfer?to=attacker      │
│   &amount=1000">            │
└─────────────────────────────┘
        │
        ▼  browser sends request WITH cookies
┌─────────────────────────────┐
│  bank.com processes it      │
│  as a legit request         │
└─────────────────────────────┘
```

**Examples:** [csurf](https://github.com/expressjs/csurf), [Django CSRF middleware](https://github.com/django/django), [OWASP CSRFGuard](https://github.com/OWASP/CSRFGuard)
