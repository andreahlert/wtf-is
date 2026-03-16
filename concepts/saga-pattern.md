# WTF is the Saga Pattern?

A way to manage transactions that span multiple services. Instead of one big database transaction, you split it into a sequence of local transactions. If one step fails, you run compensating actions to undo the previous steps. Like booking a trip: if the hotel fails, cancel the flight you already booked.

```
Happy path:
  [Order] ──→ [Payment] ──→ [Inventory] ──→ [Shipping] ✓

Payment fails:
  [Order] ──→ [Payment] ✗
                  │
                  └──→ [Cancel Order]   ← compensating action

Inventory fails:
  [Order] ──→ [Payment] ──→ [Inventory] ✗
                                  │
                  ┌───────────────┘
                  ├──→ [Refund Payment]   ← compensating actions
                  └──→ [Cancel Order]
```

**Examples:** Temporal, AWS Step Functions, MassTransit, Eventuate
