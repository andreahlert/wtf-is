# WTF is a Star Schema?

A star schema organizes a data warehouse around a central fact table (measurements/events) surrounded by dimension tables (descriptive context). The fact table has foreign keys pointing to each dimension. It's called a star because the diagram looks like a star with the fact table in the center.

```
       ┌──────────┐
       │ dim_date │
       └────┬─────┘
            │
  ┌─────────┤──────────┐
  │    ┌────▼─────┐    │
  │    │fct_sales │    │
  │    │──────────│    │
  │    │date_key  │    │
  │    │prod_key  │    │
  │    │store_key │    │
  │    │amount    │    │
  │    │quantity  │    │
  │    └──┬───┬───┘    │
  │       │   │        │
  ▼       │   ▼        ▼
┌─────────┴┐ ┌──────────┐
│dim_product│ │dim_store │
└──────────┘ └──────────┘
```

**Examples:** [dbt](https://github.com/dbt-labs/dbt-core), [Apache Hive](https://github.com/apache/hive), [Amazon Redshift](https://aws.amazon.com/redshift/)
