# WTF is a Stub?

A test double that returns pre-programmed answers to calls made during a test. Unlike a mock, a stub doesn't care how many times it was called or with what arguments. It just gives back canned data so your test can proceed without hitting a real service.

```
  Real API call:
    getUser(42) ──▶ HTTP ──▶ DB ──▶ {"name": "Bob"}

  Stubbed:
    getUser(42) ──▶ return {"name": "Bob"} immediately
                    (no HTTP, no DB, just the answer)
```

**Examples:** [Sinon.js](https://github.com/sinonjs/sinon), [WireMock](https://github.com/wiremock/wiremock), [responses](https://github.com/getsentry/responses)
