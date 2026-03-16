# WTF is JSON Schema?

A vocabulary for describing and validating JSON data. You write a schema that says "this field is a string, that field is a number between 1 and 100, this array must have at least one item." Then validate any JSON document against it. Catches bad data before it causes problems.

```
  Schema:                     Data:
  {                           {
    "type": "object",           "name": "Alice",
    "properties": {             "age": 30
      "name": {"type":"string"},}
      "age": {                  ──► VALID ✓
        "type": "integer",
        "minimum": 0           {"age": "thirty"}
      }                         ──► INVALID ✗
    },
    "required": ["name"]
  }
```

**Examples:** [ajv](https://github.com/ajv-validator/ajv), [jsonschema (Python)](https://github.com/python-jsonschema/jsonschema), [JSON Schema spec](https://json-schema.org/)
