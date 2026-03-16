# WTF is Aggregate?

A cluster of domain objects treated as a single unit for data changes. One entity is the "root" and all external access goes through it. You never modify a child object directly. This guarantees consistency within the boundary.

```
  ┌─── Aggregate ──────────────┐
  │                             │
  │  ┌──────────────┐          │
  │  │ Aggregate    │◄── only  │
  │  │ Root (Order) │   entry  │
  │  └──────┬───────┘   point  │
  │         │                  │
  │   ┌─────┴──────┐          │
  │   ▼            ▼          │
  │ ┌──────┐  ┌────────┐     │
  │ │ Item │  │ Item   │     │
  │ └──────┘  └────────┘     │
  └────────────────────────────┘
```

**Examples:** [Eventuous](https://github.com/Eventuous/eventuous), [Axon Framework](https://github.com/AxonFramework/AxonFramework), [Marten](https://github.com/JasperFx/marten)
