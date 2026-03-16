# WTF is a Slowly Changing Dimension?

A slowly changing dimension (SCD) is a dimension table where values change over time and you need to decide how to handle history. Type 1 overwrites the old value (no history). Type 2 adds a new row with date ranges (full history). Type 3 adds a column for the previous value (limited history).

```
  Type 1 (overwrite):
  │ id │ city    │           city changes NYC→LA
  │  1 │ LA      │           history lost

  Type 2 (new row):
  │ id │ city │ valid_from │ valid_to   │
  │  1 │ NYC  │ 2020-01-01 │ 2024-06-01 │  ← historical
  │  1 │ LA   │ 2024-06-01 │ 9999-12-31 │  ← current

  Type 3 (extra column):
  │ id │ city │ prev_city │
  │  1 │ LA   │ NYC       │           only 1 level of history
```

**Examples:** [dbt snapshots](https://github.com/dbt-labs/dbt-core), [Apache Hive](https://github.com/apache/hive), [Kimball Methodology](https://www.kimballgroup.com/)
