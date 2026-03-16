# WTF is CQRS?

Command Query Responsibility Segregation. Fancy name for: use one model to write data and a different model to read data. Writes go to a store optimized for writes, reads go to a store optimized for reads. Useful when your read and write patterns are very different (e.g. complex writes but simple reads, or 100x more reads than writes).

```
Traditional:
  [App] ──read/write──→ [Same DB, same model]

CQRS:
  [App] ──write──→ [Command Model] → [Write DB]
                          │
                        sync (events, CDC, etc.)
                          │
  [App] ──read───→ [Query Model]  → [Read DB]
                   optimized for     (denormalized,
                   fast queries       pre-computed)
```

**Examples:** Often paired with Event Sourcing. Used in Axon, MediatR (.NET)
