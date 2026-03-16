# WTF is RPC?

Remote Procedure Call. Call a function on a remote server as if it were local. Instead of thinking in URLs and HTTP methods, you think in function names and arguments: `userService.getUser(42)`. The RPC framework handles serialization and network transport.

```
  Client                          Server
  ┌──────────────┐            ┌──────────────┐
  │ getUser(42)  │── encode ─►│ getUser(42)  │
  │              │   network   │  → query DB  │
  │ result = ... │◄─ decode ──│  → return    │
  └──────────────┘            └──────────────┘

  Feels like a local function call,
  but it's going over the network
```

**Examples:** [gRPC](https://github.com/grpc/grpc), [tRPC](https://github.com/trpc/trpc), [Apache Thrift](https://github.com/apache/thrift)
