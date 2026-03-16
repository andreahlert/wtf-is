# WTF is Data Lake vs Data Warehouse?

**Data Lake:** dump all your raw data (structured, unstructured, whatever) into cheap storage. Figure out what to do with it later. Schema-on-read: you define the structure when you query, not when you store.

**Data Warehouse:** cleaned, structured, organized data ready for analysis. Schema-on-write: data is transformed and validated before it goes in. Optimized for fast queries by business analysts.

```
Data Lake:                          Data Warehouse:
┌──────────────────────┐            ┌──────────────────────┐
│ logs.json            │            │ ┌──────┬──────┬────┐ │
│ users.csv            │            │ │ id   │ name │ rev│ │
│ events.parquet       │            │ ├──────┼──────┼────┤ │
│ images/              │            │ │ 1    │ Acme │ 50k│ │
│ raw_api_responses/   │            │ └──────┴──────┴────┘ │
│ "just dump it here"  │            │ cleaned, structured   │
└──────────────────────┘            └──────────────────────┘
  cheap, messy, flexible              expensive, clean, fast queries
```

**Examples:** Lake: S3, Azure Data Lake, GCS. Warehouse: Snowflake, BigQuery, Redshift. Both: Databricks (Lakehouse)
