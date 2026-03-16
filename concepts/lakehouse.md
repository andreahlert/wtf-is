# WTF is a Lakehouse?

A lakehouse combines the cheap storage of a data lake (store everything as files) with the data management features of a data warehouse (ACID transactions, schema enforcement, indexing). You get one system for both raw data storage and structured analytics, instead of maintaining a lake and a warehouse separately.

```
  Data Lake:          Data Warehouse:       Lakehouse:
  ┌──────────┐        ┌──────────┐         ┌──────────┐
  │ Cheap    │        │ Structured│         │ Cheap    │
  │ Schema ✗ │        │ Schema ✓  │         │ Schema ✓ │
  │ ACID  ✗  │        │ ACID  ✓   │         │ ACID  ✓  │
  │ Raw files│        │ Expensive │         │ Raw files│
  └──────────┘        └──────────┘         │ + metadata│
                                           └──────────┘
  Files (Parquet) + metadata layer (Delta/Iceberg)
```

**Examples:** [Delta Lake](https://github.com/delta-io/delta), [Apache Iceberg](https://github.com/apache/iceberg), [Databricks](https://www.databricks.com/)
