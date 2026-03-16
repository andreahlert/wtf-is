# WTF is Schema Evolution?

Schema evolution is the ability to change a data schema (add fields, rename columns, change types) without breaking existing readers or writers. Good schema evolution means old code can still read new data and new code can still read old data, using defaults and compatibility rules.

```
  Version 1:  { name: string, age: int }
  Version 2:  { name: string, age: int, email: string }

  Forward compatible:
  Old reader sees v2 data → ignores "email" field ✓

  Backward compatible:
  New reader sees v1 data → uses default for "email" ✓

  ┌──────────┐     ┌──────────┐
  │ Writer v2│────▶│ Reader v1│  works if forward-compatible
  │ Writer v1│────▶│ Reader v2│  works if backward-compatible
  └──────────┘     └──────────┘
```

**Examples:** [Avro](https://github.com/apache/avro), [Protobuf](https://github.com/protocolbuffers/protobuf), [Confluent Schema Registry](https://github.com/confluentinc/schema-registry)
