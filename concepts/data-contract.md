# WTF is a Data Contract?

A data contract is a formal agreement between a data producer and its consumers that defines the schema, semantics, quality guarantees, and SLAs of a dataset. If the producer wants to change the schema or break a guarantee, they have to update the contract first. This prevents surprise breakages in downstream pipelines.

```
  data_contract:
    name: orders
    owner: payments-team
    schema:
      - order_id: integer (not null)
      - amount: decimal (> 0)
      - created_at: timestamp
    quality:
      - freshness: < 1 hour
      - completeness: > 99.5%
    consumers:
      - analytics-team
      - fraud-team

  Producer changes schema → contract violation → alert
```

**Examples:** [DataContract CLI](https://github.com/datacontract/datacontract-cli), [Soda](https://github.com/sodadata/soda-core), [Great Expectations](https://github.com/great-expectations/great_expectations)
