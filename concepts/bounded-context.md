# WTF is Bounded Context?

A boundary within which a particular domain model applies. The word "Order" might mean different things in Shipping vs Billing. Each bounded context owns its own models, rules, and language, so teams can work independently without stepping on each other.

```
  ┌─ Billing Context ─┐   ┌─ Shipping Context ─┐
  │                    │   │                     │
  │  Order = invoice   │   │  Order = package    │
  │  Customer = payer  │   │  Customer = address │
  │                    │   │                     │
  └────────┬───────────┘   └──────────┬──────────┘
           │     Anti-Corruption      │
           └────── Layer/API ─────────┘
```

**Examples:** [context-mapper](https://github.com/ContextMapper/context-mapper-dsl), [Eventuous](https://github.com/Eventuous/eventuous), [Axon Framework](https://github.com/AxonFramework/AxonFramework)
