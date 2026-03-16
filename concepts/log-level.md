# WTF is a Log Level?

A severity label attached to each log message so you can filter by importance. From least to most severe: DEBUG, INFO, WARN, ERROR, FATAL. In production you typically set the level to INFO or WARN, which silences the noisy DEBUG messages.

```
  DEBUG ──▶ "cache key: user_42"         (dev only)
  INFO  ──▶ "server started on :8080"    (normal ops)
  WARN  ──▶ "disk 85% full"             (attention)
  ERROR ──▶ "failed to connect to DB"    (broken)
  FATAL ──▶ "out of memory, shutting down" (dead)

  Production level = WARN
  → only WARN, ERROR, FATAL are logged
```

**Examples:** [Logback](https://github.com/qos-ch/logback), [Winston](https://github.com/winstonjs/winston), [slog](https://github.com/golang/go)
