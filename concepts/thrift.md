# WTF is Thrift?

A framework from Facebook (now Apache) for cross-language RPC. You define services and data types in a `.thrift` file, and it generates code for many languages. Includes both serialization and a full RPC stack with multiple transport and protocol options.

```
  service UserService {          Thrift Compiler
    User getUser(1: i32 id)         │
  }                          ┌──────┼──────┐
                             ▼      ▼      ▼
  struct User {            Python  Java    Go
    1: i32 id,             client  server  client
    2: string name         + server + client + server
  }

  One .thrift file → full client/server for N languages
```

**Examples:** [Apache Thrift](https://github.com/apache/thrift), [fbthrift (Facebook)](https://github.com/facebook/fbthrift), [Finagle](https://github.com/twitter/finagle)
