# WTF is Session Management?

Session Management is how a server tracks that a user is logged in across multiple requests. HTTP is stateless, so after login the server creates a session (stored server-side or in a JWT) and gives the client a session ID via a cookie. Every subsequent request includes that cookie so the server knows who you are.

```
  ┌──────┐  POST /login        ┌────────┐
  │ User │────────────────────▶│ Server │
  └──────┘                     └────────┘
                                   │
      Set-Cookie: sid=abc123       │ creates session
  ◀────────────────────────────────┘

  ┌──────┐  GET /dashboard     ┌────────┐
  │ User │  Cookie: sid=abc123 │ Server │
  │      │────────────────────▶│ looks  │
  └──────┘                     │ up sid │
                               └────────┘

  Must protect against:
    ✗ Session fixation (attacker sets your session ID)
    ✗ Session hijacking (attacker steals your cookie)
    ✓ Regenerate ID on login, set HttpOnly + Secure flags
```

**Examples:** [express-session](https://github.com/expressjs/session), [Flask-Session](https://github.com/pallets-eco/flask-session), [Spring Session](https://github.com/spring-projects/spring-session)
