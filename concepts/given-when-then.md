# WTF is Given-When-Then?

A template for writing test scenarios in BDD. **Given** sets up the preconditions, **When** describes the action, **Then** states the expected outcome. It forces you to think about tests as behaviors with clear setup, trigger, and verification phases.

```
  Given ─── the user is logged in
             and has items in cart
    │
  When ──── they click "Checkout"
    │
  Then ──── order is created
             and confirmation email is sent
```

**Examples:** [Cucumber](https://github.com/cucumber/cucumber), [Behave](https://github.com/behave/behave), [pytest-bdd](https://github.com/pytest-dev/pytest-bdd)
