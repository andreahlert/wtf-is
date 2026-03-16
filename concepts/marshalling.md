# WTF is Marshalling?

Marshalling is like serialization but goes further: it prepares data to cross a boundary between different systems, languages, or memory spaces. It handles type conversion, byte ordering, and calling conventions so two different systems can understand each other's data.

```
Go Program                   C Library
┌─────────┐   marshal       ┌─────────┐
│ Go struct│ ──────────────► │ C struct │
│ {        │  convert types  │ {        │
│  Name str│  fix alignment  │  name *c │
│  Age int │  byte order     │  age i32 │
│ }        │                 │ }        │
└─────────┘                 └─────────┘

Serialization: object → bytes (storage/network)
Marshalling:   object → foreign format (cross-boundary calls)
```

**Examples:** [Go encoding/json (Marshal)](https://pkg.go.dev/encoding/json), [gRPC protobuf](https://github.com/grpc/grpc), [Python ctypes](https://github.com/python/cpython)
