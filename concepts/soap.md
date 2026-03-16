# WTF is SOAP?

Simple Object Access Protocol. An XML-based messaging protocol for exchanging structured data between services. Uses WSDL for contract definitions and supports built-in error handling, security, and transactions. Heavyweight compared to REST, but common in enterprise and legacy systems.

```
  Client                         Server
  ┌────────┐   XML envelope   ┌────────┐
  │        │─────────────────►│        │
  │ SOAP   │  <Envelope>      │ SOAP   │
  │ Client │    <Body>        │ Server │
  │        │      <GetUser>   │        │
  │        │◄─────────────────│        │
  └────────┘   XML response   └────────┘

  + WSDL contract (describes all operations)
  + Built-in WS-Security, WS-Transaction
```

**Examples:** [Apache CXF](https://github.com/apache/cxf), [Spring WS](https://github.com/spring-projects/spring-ws), [Zeep (Python)](https://github.com/mvantellingen/python-zeep)
