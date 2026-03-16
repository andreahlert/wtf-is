# WTF is Apache Iceberg?

Apache Iceberg is an open table format for huge analytical datasets. Like Delta Lake, it adds ACID transactions, schema evolution, and time travel to files stored in a data lake. Iceberg tracks data at the file level with metadata, enabling partition evolution (change how data is partitioned without rewriting it) and engine-agnostic access.

```
  ┌────────────────────────────────┐
  │ Catalog (points to metadata)   │
  └──────────────┬─────────────────┘
                 ▼
  ┌────────────────────────────────┐
  │ Metadata (snapshot list)       │
  │  snap-1 → manifest → files    │
  │  snap-2 → manifest → files    │ ← time travel
  └──────────────┬─────────────────┘
                 ▼
  ┌──────┐ ┌──────┐ ┌──────┐
  │.parq │ │.parq │ │.parq │  data files
  └──────┘ └──────┘ └──────┘
```

**Examples:** [Apache Iceberg](https://github.com/apache/iceberg), [PyIceberg](https://github.com/apache/iceberg-python), [Iceberg Rust](https://github.com/apache/iceberg-rust)
