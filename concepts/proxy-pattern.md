# WTF is Proxy Pattern?

An object that stands in for another object and controls access to it. The proxy has the same interface as the real thing, so the client doesn't know the difference. Used for lazy loading, access control, logging, or caching.

```
  Client          Proxy              Real Object
  ┌──────┐    ┌──────────────┐    ┌─────────────┐
  │      │───►│ check access │───►│             │
  │ App  │    │ log request  │    │  Database   │
  │      │◄───│ cache result │◄───│  Service    │
  └──────┘    └──────────────┘    └─────────────┘
              same interface       only called if
              as real object       proxy allows it
```

**Examples:** [ES6 Proxy](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy), [Java Dynamic Proxy](https://docs.oracle.com/javase/8/docs/api/java/lang/reflect/Proxy.html), [envoy](https://github.com/envoyproxy/envoy)
