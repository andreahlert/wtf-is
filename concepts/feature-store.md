# WTF is a Feature Store?

A feature store is a centralized system for storing, managing, and serving ML features (the input variables your model uses). It ensures training and serving use the exact same feature computations, prevents duplicated work across teams, and handles both batch and real-time feature retrieval.

```
  Raw Data → Feature Engineering → Feature Store → Model
                                   ┌──────────────────┐
                                   │  Feature Store    │
                                   │ ┌──────┬────────┐ │
  Batch pipeline ──────────────►   │ │user_ │ avg_   │ │ ──► Training
  Real-time events ────────────►   │ │age   │purchase│ │ ──► Serving
                                   │ │ 25   │ $47.50 │ │
                                   │ └──────┴────────┘ │
                                   └──────────────────┘
```

**Examples:** [Feast](https://github.com/feast-dev/feast), [Tecton](https://www.tecton.ai/), [Hopsworks](https://github.com/logicalclocks/hopsworks)
