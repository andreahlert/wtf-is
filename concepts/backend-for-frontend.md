# WTF is Backend for Frontend?

A dedicated backend for each frontend type (web, mobile, TV). Instead of one generic API that every client wrestles with, each BFF tailors responses to exactly what its client needs. The mobile BFF sends smaller payloads, the web BFF includes richer data.

```
  ┌────────┐     ┌──────────┐
  │ Web    │────►│ Web BFF  │──┐
  └────────┘     └──────────┘  │   ┌───────────┐
                               ├──►│           │
  ┌────────┐     ┌──────────┐  │   │ Services  │
  │ Mobile │────►│Mobile BFF│──┤   │           │
  └────────┘     └──────────┘  │   └───────────┘
                               │
  Each BFF returns exactly     │
  what its client needs        │
```

**Examples:** [Apollo GraphQL](https://github.com/apollographql/apollo-server), [Netflix Zuul](https://github.com/Netflix/zuul), [Express.js](https://github.com/expressjs/express)
