# WTF is Strangler Fig Pattern?

Gradually replace a legacy system by routing requests to the new system piece by piece. Like a strangler fig tree that grows around an old tree until it replaces it entirely. You never do a big-bang rewrite. The old and new systems coexist during migration.

```
  Phase 1:        Phase 2:        Phase 3:
  ┌──────┐       ┌──────┐       ┌──────┐
  │Proxy │       │Proxy │       │Proxy │
  └──┬───┘       └──┬───┘       └──┬───┘
     │              ├────┐         │
     ▼              ▼    ▼         ▼
  ┌──────┐    ┌────┐ ┌────┐   ┌──────┐
  │Legacy│    │Old │ │New │   │ New  │
  │ 100% │    │70% │ │30% │   │ 100% │
  └──────┘    └────┘ └────┘   └──────┘
```

**Examples:** [nginx](https://github.com/nginx/nginx), [Envoy](https://github.com/envoyproxy/envoy), [Traefik](https://github.com/traefik/traefik)
