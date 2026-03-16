# WTF is ORC?

ORC (Optimized Row Columnar) is a columnar file format from the Hadoop ecosystem, similar to Parquet. It stores data in columns for fast analytical queries, includes built-in indexes, and compresses well. ORC was created for Hive and is most common in Hadoop-centric environments, while Parquet became the broader standard.

```
  ORC file structure:
  ┌─────────────────────────────┐
  │ Stripe 1                    │
  │  ├── Index data             │ ← min/max per column
  │  ├── Column 1: [values...]  │
  │  ├── Column 2: [values...]  │
  │  └── Column 3: [values...]  │
  ├─────────────────────────────┤
  │ Stripe 2                    │
  │  └── ...                    │
  ├─────────────────────────────┤
  │ Footer (schema + stats)     │
  └─────────────────────────────┘
```

**Examples:** [Apache ORC](https://github.com/apache/orc), [Apache Hive](https://github.com/apache/hive), [Presto](https://github.com/prestodb/presto)
