# WTF is REST?

An architectural style for APIs that uses HTTP methods (GET, POST, PUT, DELETE) on resources identified by URLs. Each request is stateless and self-contained. Resources are nouns (`/users/42`), methods are verbs. Simple, widely adopted, and works with any language.

```
  GET    /users       → list users
  POST   /users       → create user
  GET    /users/42    → get user 42
  PUT    /users/42    → replace user 42
  PATCH  /users/42    → partial update
  DELETE /users/42    → delete user 42

  Stateless: each request carries all needed info
  (auth token, content type, etc.)
```

**Examples:** [GitHub REST API](https://docs.github.com/en/rest), [Stripe API](https://stripe.com/docs/api), [Express.js](https://github.com/expressjs/express)
