# WTF is gRPC?

A framework for calling functions on a remote server as if they were local. Uses Protocol Buffers (a binary format) instead of JSON, and HTTP/2 instead of HTTP/1.1. Faster and more type-safe than REST, but harder to debug because the data isn't human-readable. Mainly used for service-to-service communication.

```
REST/JSON:
  POST /api/users  { "name": "Alice" }     ← text, human-readable
  Response: 200    { "id": 1, "name": "Alice" }

gRPC/Protobuf:
  userService.CreateUser(name: "Alice")     ← function call style
  Response: User { id: 1, name: "Alice" }   ← binary, fast, typed

Define your API in a .proto file:
  service UserService {
    rpc CreateUser (CreateUserRequest) returns (User);
  }
```

**Examples:** [gRPC](https://github.com/grpc/grpc) (by Google), used heavily in [Kubernetes](https://github.com/kubernetes/kubernetes), [Envoy](https://github.com/envoyproxy/envoy), many microservice architectures
