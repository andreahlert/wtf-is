# WTF is Retry Pattern?

When a request fails due to a transient error (network blip, timeout), try again automatically. Usually with exponential backoff: wait 1s, then 2s, then 4s. Set a max retry count so you don't loop forever. Only retry on errors that might be temporary.

```
  Client                    Server
    │── request ──────────────►│
    │◄── 503 ─────────────────│  fail
    │   (wait 1s)              │
    │── retry ────────────────►│
    │◄── 503 ─────────────────│  fail
    │   (wait 2s)              │
    │── retry ────────────────►│
    │◄── 200 OK ──────────────│  success!
```

**Examples:** [Polly](https://github.com/App-vNext/Polly), [resilience4j](https://github.com/resilience4j/resilience4j), [tenacity](https://github.com/jd/tenacity)
