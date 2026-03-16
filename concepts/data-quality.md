# WTF is Data Quality?

Data quality means your data is accurate, complete, consistent, timely, and valid. Bad data quality means null values where there shouldn't be any, duplicates, stale data, or values that violate business rules. Data quality tools automatically test your data against expectations and alert you when something is off.

```
  Data quality checks:
  ┌─────────────────────────────────────────┐
  │ ✓ orders.amount is never negative       │
  │ ✓ users.email matches regex             │
  │ ✗ orders.created_at has 15% nulls       │ ← alert!
  │ ✓ row count within expected range       │
  │ ✗ revenue dropped 40% vs yesterday      │ ← alert!
  └─────────────────────────────────────────┘

  Run after each pipeline, before dashboards update
```

**Examples:** [Great Expectations](https://github.com/great-expectations/great_expectations), [Soda Core](https://github.com/sodadata/soda-core), [dbt tests](https://github.com/dbt-labs/dbt-core)
