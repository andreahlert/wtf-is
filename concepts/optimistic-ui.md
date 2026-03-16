# WTF is Optimistic UI?

A pattern where the UI immediately shows the expected result of an action before the server confirms it. When you click "like," the heart turns red instantly without waiting for the API response. If the request fails, the UI rolls back. It makes apps feel fast.

```
Pessimistic:                  Optimistic:

Click "Like"                  Click "Like"
  ──► wait for server...        ──► show liked immediately
  ──► server says OK            ──► server says OK (done)
  ──► show liked                OR
                                ──► server says error
                                ──► undo the like
```

**Examples:** [Apollo Client](https://github.com/apollographql/apollo-client), [TanStack Query](https://github.com/TanStack/query), [SWR](https://github.com/vercel/swr)
