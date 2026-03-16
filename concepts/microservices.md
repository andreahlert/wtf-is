# WTF are Microservices?

An architecture where your app is split into small, independent services that each do one thing and communicate over the network (usually HTTP or messaging). Each service can be deployed, scaled, and updated independently. The opposite of a monolith where everything is in one codebase.

```
Monolith:                          Microservices:
┌──────────────────┐               ┌──────┐  ┌──────┐  ┌───────┐
│  Auth            │               │ Auth │  │Orders│  │Payment│
│  Orders          │               └──┬───┘  └──┬───┘  └──┬────┘
│  Payments        │                  │         │         │
│  Notifications   │                  └────HTTP/events────┘
│  All in one      │
│  deploy together │               Deploy, scale, crash independently
└──────────────────┘
```

**Examples:** Most large-scale apps (Netflix, Uber, Spotify) use some form of this
