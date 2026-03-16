# WTF is a Smoke Test?

A quick, shallow check that the most critical paths of your application are not completely broken. Think of it as "does the app even start and respond?" You run smoke tests right after a deploy to catch catastrophic failures before users do.

```
  Deploy done ──▶ Smoke Test
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
   Homepage     Login page    API /health
    loads?       renders?      200 OK?
        │            │            │
        ▼            ▼            ▼
       ✓/✗          ✓/✗          ✓/✗
```

**Examples:** [Cypress](https://github.com/cypress-io/cypress), [curl](https://github.com/curl/curl), [Playwright](https://github.com/microsoft/playwright)
