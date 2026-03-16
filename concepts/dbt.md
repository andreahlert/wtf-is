# WTF is dbt?

dbt (data build tool) lets analytics engineers transform data inside the warehouse using SQL SELECT statements. You write models (SQL files), define dependencies between them, and dbt figures out the execution order, materializes results as tables or views, and runs tests. It brings software engineering practices (version control, testing, CI/CD) to data transformation.

```
  models/
  ├── staging/
  │   └── stg_orders.sql      ← clean raw data
  ├── marts/
  │   └── fct_revenue.sql     ← business metrics
  └── schema.yml               ← tests + docs

  $ dbt run
  stg_orders ──▶ fct_revenue ──▶ dashboard
  (DAG order)    (depends on stg_orders)
```

**Examples:** [dbt-core](https://github.com/dbt-labs/dbt-core), [dbt-utils](https://github.com/dbt-labs/dbt-utils), [dbt Cloud](https://www.getdbt.com/)
