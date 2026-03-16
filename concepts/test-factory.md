# WTF is a Test Factory?

A helper that generates test data with sensible defaults, so you only specify the fields you care about. Instead of constructing a full User object with 15 fields in every test, you call `createUser({name: "Bob"})` and the factory fills in the rest.

```
  Without factory:
    User(name="Bob", email="b@x.com", age=30,
         role="user", active=true, ...)  ← every test

  With factory:
    createUser({name: "Bob"})
    → fills email, age, role, active automatically
```

**Examples:** [factory_bot](https://github.com/thoughtbot/factory_bot), [Fishery](https://github.com/thoughtbot/fishery), [Polyfactory](https://github.com/litestar-org/polyfactory)
