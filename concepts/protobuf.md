# WTF is Protocol Buffers?

Google's binary serialization format. You define your data structure in a `.proto` file, and the compiler generates code for any language. Smaller and faster than JSON because it's binary and schema-based. Used heavily with gRPC.

```
  message User {         Binary output:
    int32 id = 1;        08 01 12 05 41 6C 69 63 65
    string name = 2;     (9 bytes vs ~30 for JSON)
  }

  .proto file ──► protoc compiler
                      │
           ┌──────────┼──────────┐
           ▼          ▼          ▼
        Python      Java     TypeScript
        stubs       stubs      stubs
```

**Examples:** [protobuf](https://github.com/protocolbuffers/protobuf), [gRPC](https://github.com/grpc/grpc), [buf](https://github.com/bufbuild/buf)
