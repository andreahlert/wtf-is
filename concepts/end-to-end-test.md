# WTF is an End-to-End Test?

A test that drives the entire application the same way a real user would, from clicking a button in the browser to verifying the database was updated. Slowest and most brittle test type, but gives the highest confidence that the whole system actually works.

```
  Browser/Client
       │
       ▼
  ┌─────────┐    ┌─────────┐    ┌────┐
  │ Frontend │───▶│ Backend │───▶│ DB │
  └─────────┘    └─────────┘    └────┘
  ◄──────────── tested as one ────────►
```

**Examples:** [Cypress](https://github.com/cypress-io/cypress), [Playwright](https://github.com/microsoft/playwright), [Selenium](https://github.com/SeleniumHQ/selenium)
