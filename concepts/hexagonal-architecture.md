# WTF is Hexagonal Architecture?

Your business logic sits in the center and talks to the outside world through ports (interfaces) and adapters (implementations). Want to swap Postgres for Mongo? Change the adapter, not the core. Also called "Ports and Adapters."

```
          ┌──── Adapters ────┐
          │                   │
  HTTP ──►│  ┌─── Core ───┐  │◄── CLI
          │  │             │  │
  DB   ◄──│  │  Business   │  │──► Queue
          │  │  Logic      │  │
  gRPC ──►│  │             │  │◄── Tests
          │  └─────────────┘  │
          │   Ports = ifaces  │
          └───────────────────┘
```

**Examples:** [go-hexagonal](https://github.com/iDevoid/go-hexagonal), [buckpal](https://github.com/thombergs/buckpal), [hex-arch-kotlin](https://github.com/dustinsand/hex-arch-kotlin-spring-boot)
