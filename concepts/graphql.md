# WTF is GraphQL?

A query language for APIs where the client specifies exactly what data it wants. Instead of hitting multiple REST endpoints and getting fixed responses with fields you don't need, you send one query and get back exactly the shape you asked for. One endpoint, flexible queries.

```
REST:
  GET /users/1          → { id, name, email, avatar, bio, created_at, ... }
  GET /users/1/posts    → [{ id, title, body, tags, ... }]
  2 requests, tons of extra fields you don't use

GraphQL:
  POST /graphql
  query {
    user(id: 1) {
      name
      posts { title }
    }
  }
  → { user: { name: "Alice", posts: [{ title: "Hello" }] } }
  1 request, only what you asked for
```

**Examples:** [GitHub API v4](https://docs.github.com/en/graphql), [Shopify](https://shopify.dev/docs/api/admin-graphql), [Apollo](https://github.com/apollographql/apollo-server), [Hasura](https://github.com/hasura/graphql-engine)
