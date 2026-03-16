# WTF is Timeout Pattern?

Set a maximum time you're willing to wait for an operation. If it doesn't complete in time, abort and handle the failure. Without timeouts, a slow dependency can hang your entire system. Always set timeouts on network calls, database queries, and external APIs.

```
  Client                    Server
    │── request ──────────────►│
    │                          │ (processing...)
    │   ┌──── 5s timeout ───┐ │ (still going...)
    │   │                    │ │
    │   └── TIMEOUT! ───────┘ │
    │                          │
    │  cancel & return error   │
    │  (don't wait forever)    │
```

**Examples:** [Polly](https://github.com/App-vNext/Polly), [resilience4j](https://github.com/resilience4j/resilience4j), [Go context.WithTimeout](https://pkg.go.dev/context)
