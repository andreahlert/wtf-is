# WTF is Structured Logging?

Logging in a machine-parseable format (usually JSON) instead of plain text strings. Instead of `"User Bob logged in from 1.2.3.4"`, you log `{"user": "Bob", "action": "login", "ip": "1.2.3.4"}`. This makes it easy to search, filter, and aggregate logs at scale.

```
  Unstructured:
  "2024-01-15 ERROR User Bob failed to login from 1.2.3.4"
  → good luck parsing that at scale

  Structured:
  {"time":"2024-01-15","level":"error","user":"Bob",
   "action":"login","ip":"1.2.3.4","status":"failed"}
  → query: level=error AND action=login
```

**Examples:** [structlog](https://github.com/hynek/structlog), [Pino](https://github.com/pinojs/pino), [Zap](https://github.com/uber-go/zap)
