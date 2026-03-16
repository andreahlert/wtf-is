# WTF is BDD?

Behavior-Driven Development. Tests are written in plain English using Given/When/Then syntax so that non-developers (product managers, QA) can read and even write them. The test describes the behavior from the user's perspective, not the code's internals.

```
  Feature: Shopping Cart

  Scenario: Add item
    Given the cart is empty
    When I add "Laptop" to the cart
    Then the cart should contain 1 item
    And the total should be $999

  ↑ readable by anyone on the team
```

**Examples:** [Cucumber](https://github.com/cucumber/cucumber), [Behave](https://github.com/behave/behave), [SpecFlow](https://github.com/SpecFlowOSS/SpecFlow)
