# WTF is Data Lineage?

Data lineage tracks where data comes from, how it moves through your systems, and what transformations it goes through along the way. When a dashboard number looks wrong, lineage tells you exactly which source tables, ETL jobs, and transformations produced it so you can trace the problem.

```
  Source          Transform         Destination
  ┌──────────┐   ┌───────────┐    ┌────────────┐
  │ Postgres │──▶│ dbt model │──▶ │ Warehouse  │──▶ Dashboard
  └──────────┘   │ (join +   │    └────────────┘
                 │  filter)  │
  ┌──────────┐   │           │
  │ CSV file │──▶│           │
  └──────────┘   └───────────┘

  "Why is revenue wrong?" → trace lineage backwards
```

**Examples:** [OpenLineage](https://github.com/OpenLineage/OpenLineage), [Marquez](https://github.com/MarquezProject/marquez), [DataHub](https://github.com/datahub-project/datahub)
