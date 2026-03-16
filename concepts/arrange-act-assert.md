# WTF is Arrange-Act-Assert?

A pattern for structuring unit tests into three clear sections. **Arrange** sets up the test data and dependencies. **Act** calls the thing you're testing. **Assert** checks the result. Every test reads like a three-act story.

```
  // Arrange
  user = createUser({balance: 100})

  // Act
  result = user.withdraw(30)

  // Assert
  expect(result).toBe(true)
  expect(user.balance).toBe(70)
```

**Examples:** [Jest](https://github.com/jestjs/jest), [pytest](https://github.com/pytest-dev/pytest), [JUnit](https://github.com/junit-team/junit5)
