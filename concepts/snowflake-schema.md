# WTF is a Snowflake Schema?

A snowflake schema is a star schema where the dimension tables are normalized into sub-dimensions. Instead of one flat "product" dimension, you might have product, category, and brand as separate tables. This reduces storage and redundancy but requires more joins, making queries slightly more complex.

```
  Star:                    Snowflake:
  ┌─────────┐              ┌─────────┐
  │dim_prod │              │dim_prod │
  │─────────│              │─────────│    ┌──────────┐
  │name     │              │name     │───▶│dim_categ │
  │category │              │categ_fk │    │──────────│
  │brand    │              │brand_fk │    │categ_name│
  └─────────┘              └─────────┘    └──────────┘
  1 table, denormalized          │        ┌──────────┐
                                 └───────▶│dim_brand │
                                          │──────────│
                                          │brand_name│
                                          └──────────┘
                                 3 tables, normalized
```

**Examples:** [dbt](https://github.com/dbt-labs/dbt-core), [Apache Hive](https://github.com/apache/hive), [Snowflake (the product)](https://www.snowflake.com/)
