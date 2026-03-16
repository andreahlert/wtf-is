# WTF is a Schema Registry?

A schema registry is a centralized service that stores and validates schemas for data flowing through message systems like Kafka. Producers register their schema before sending data, and consumers fetch the schema to deserialize messages. The registry enforces compatibility rules so schema changes don't break existing consumers.

```
  Producer                Schema Registry           Consumer
  ┌──────┐  register     ┌──────────────┐  fetch   ┌──────┐
  │      │──schema v1───▶│ v1: {name}   │◀────────│      │
  │      │──schema v2───▶│ v2: {name,   │          │      │
  │      │               │     email}   │          │      │
  └──────┘               └──────────────┘          └──────┘
                          checks: is v2 backward
                          compatible with v1? ✓
```

**Examples:** [Confluent Schema Registry](https://github.com/confluentinc/schema-registry), [Apicurio Registry](https://github.com/Apicurio/apicurio-registry), [AWS Glue Schema Registry](https://github.com/awslabs/aws-glue-schema-registry)
