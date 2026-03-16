# WTF is Avro?

A row-based binary serialization format from Apache. The schema is stored alongside the data, so readers can always decode it even if the writer's schema evolved. Supports schema evolution (add/remove fields without breaking). Popular in Kafka and data pipelines.

```
  Schema (JSON):              Binary Data:
  {                           ┌─────────────────┐
    "type": "record",        │ compact binary  │
    "name": "User",          │ rows with no    │
    "fields": [              │ field names     │
      {"name": "id",         │ (schema tells   │
       "type": "int"},       │  how to decode) │
      {"name": "name",       └─────────────────┘
       "type": "string"}
    ]                         Schema embedded or
  }                           in Schema Registry
```

**Examples:** [Apache Avro](https://github.com/apache/avro), [Confluent Schema Registry](https://github.com/confluentinc/schema-registry), [fastavro](https://github.com/fastavro/fastavro)
