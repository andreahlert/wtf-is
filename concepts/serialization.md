# WTF is Serialization?

Serialization converts an in-memory object into a format that can be stored or transmitted (JSON, bytes, XML). Deserialization is the reverse: turning that data back into an object. This is how programs save state, send data over networks, or talk to each other.

```
In-Memory Object          Serialized (JSON)
┌──────────────┐          ┌────────────────────────┐
│ User {       │  ──────► │ {"name":"Ana","age":30} │
│   name: Ana  │ serialize│                          │
│   age: 30    │          └────────────────────────┘
└──────────────┘                     │
       ▲                     deserialize
       └─────────────────────────────┘
```

**Examples:** [serde (Rust)](https://github.com/serde-rs/serde), [Jackson (Java)](https://github.com/FasterXML/jackson), [Python json](https://github.com/python/cpython)
