# WTF is Data Observability?

Data observability is monitoring your data pipelines the way you monitor application infrastructure. It tracks freshness (is data arriving on time?), volume (did row counts change unexpectedly?), schema (did columns get added or dropped?), distribution (did value patterns shift?), and lineage (what's affected downstream?).

```
  ┌─────────────────────────────────────┐
  │ Data Observability Dashboard        │
  │                                     │
  │ Freshness:    orders updated 4h ago │ ⚠ late
  │ Volume:       50k rows (expected 80k)│ ✗ alert
  │ Schema:       "price" column dropped │ ✗ alert
  │ Distribution: avg(amount) shifted 3σ│ ⚠ anomaly
  │ Lineage:      12 downstream tables  │
  └─────────────────────────────────────┘
```

**Examples:** [Monte Carlo](https://www.montecarlodata.com/), [Elementary](https://github.com/elementary-data/elementary), [OpenMetadata](https://github.com/open-metadata/OpenMetadata)
