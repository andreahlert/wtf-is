# WTF is Contract Testing?

A test that verifies two services agree on the shape of their API communication without needing both services running. The consumer defines what it expects (the contract), and the provider verifies it can fulfill that contract. Catches breaking API changes before they hit production.

```
  Consumer                    Provider
  ┌────────┐                 ┌────────┐
  │ "I need│   contract.json │ "I can │
  │ {name, │ ──────────────▶ │ provide│
  │  age}" │                 │ that"  │
  └────────┘                 └────────┘
      tested independently, contract is the bridge
```

**Examples:** [Pact](https://github.com/pact-foundation/pact-jvm), [Specmatic](https://github.com/znsio/specmatic), [Schemathesis](https://github.com/schemathesis/schemathesis)
