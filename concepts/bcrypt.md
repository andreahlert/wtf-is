# WTF is bcrypt?

bcrypt is a password hashing function designed to be intentionally slow. Unlike SHA-256 which is designed to be fast (bad for passwords, attackers can try billions per second), bcrypt has a configurable "cost factor" that controls how long each hash takes. This makes brute-force attacks impractical. It also handles salting automatically.

```
bcrypt("password123", cost=12)
       │
       ▼
  $2b$12$LJ3m4ys3Lg.x8kQa7f2b9uOe1fN...
  ││  ││ │                │
  │ cost salt             hash
  │
  algorithm version

  Cost factor = number of iterations (2^cost)
    cost=10  →  ~100ms per hash
    cost=12  →  ~400ms per hash
    cost=14  →  ~1.6s per hash

  Attacker trying 1M passwords at cost=12:
  1,000,000 × 0.4s = 4.6 days (per user!)
```

**Examples:** [node.bcrypt.js](https://github.com/kelektiv/node.bcrypt.js), [bcrypt (Python)](https://github.com/pyca/bcrypt), [jBCrypt](https://github.com/djmdjm/jBCrypt)
