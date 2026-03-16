# WTF is a Service Mesh?

A layer of infrastructure between your microservices that handles traffic routing, retries, encryption, and observability so you don't have to put that logic inside each service. Every service gets a tiny proxy sidecar that intercepts all network traffic.

```
Without mesh:
  [Service A] ──HTTP──→ [Service B]
       └── retry? timeout? TLS? auth? metrics? all manual

With mesh:
  [Service A] → [proxy] ══mTLS══ [proxy] → [Service B]
                   │                 │
                   └── retry, circuit break, metrics, tracing
                       all handled automatically
```

**Examples:** [Istio](https://github.com/istio/istio), [Linkerd](https://github.com/linkerd/linkerd2), [Consul Connect](https://github.com/hashicorp/consul)
