# WTF is API Composition?

A pattern where one service queries multiple downstream services and combines the results into a single response. Instead of the client making 5 calls and joining data itself, a composer service handles the fan-out and aggregation.

```
  Client          Composer         Services
  ┌──────┐     ┌───────────┐    ┌──────────┐
  │      │────►│           │───►│ Users    │
  │      │     │ GET       │───►│ Orders   │
  │      │     │ /profile  │───►│ Reviews  │
  │      │◄────│           │    └──────────┘
  └──────┘     │ merge &   │
   1 request   │ return    │    3 internal calls
               └───────────┘
```

**Examples:** [Apollo Federation](https://github.com/apollographql/federation), [Netflix GraphQL](https://github.com/Netflix/dgs-framework), [KrakenD](https://github.com/krakend/krakend-ce)
