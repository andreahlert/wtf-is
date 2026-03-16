# WTF is Gateway Aggregation?

The API gateway itself fans out to multiple backend services and combines responses before sending back to the client. Similar to API composition, but the aggregation logic lives in the gateway layer, not in a separate service. Reduces client-to-server round trips.

```
  Client          Gateway            Services
  ┌──────┐     ┌───────────┐     ┌───────────┐
  │      │     │           │────►│ Catalog   │
  │ GET  │────►│ Aggregate │────►│ Inventory │
  │/product│   │ responses │────►│ Pricing   │
  │      │◄────│ into one  │     └───────────┘
  └──────┘     └───────────┘
  1 request     gateway does      3 backend calls
                the merging
```

**Examples:** [KrakenD](https://github.com/krakend/krakend-ce), [Kong](https://github.com/Kong/kong), [Apollo Router](https://github.com/apollographql/router)
