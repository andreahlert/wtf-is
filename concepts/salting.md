# WTF is Salting?

Salting means adding a random string to each password before hashing it. Without salting, two users with the same password produce the same hash, and attackers can use precomputed rainbow tables to crack them instantly. With salting, each hash is unique even for identical passwords.

```
Without salt:
  "password123" → hash → 5f4dcc3b5aa765d...
  "password123" → hash → 5f4dcc3b5aa765d...  (same!)
  Attacker: rainbow table lookup → cracked

With salt (random per user):
  "password123" + "x8kQ" → hash → a7f2b9c1e...
  "password123" + "m3Rz" → hash → 4d8e1f7a2...  (different!)
  Attacker: rainbow table useless

  Stored in DB:
  ┌────────┬──────┬───────────────┐
  │ user   │ salt │ hash          │
  │ alice  │ x8kQ │ a7f2b9c1e... │
  │ bob    │ m3Rz │ 4d8e1f7a2... │
  └────────┴──────┴───────────────┘
```

**Examples:** [bcrypt](https://github.com/kelektiv/node.bcrypt.js), [Argon2](https://github.com/P-H-C/phc-winner-argon2), [passlib](https://github.com/glic3rern/passlib)
