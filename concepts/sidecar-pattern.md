# WTF is the Sidecar Pattern?

A helper container that runs alongside your main app container in the same pod/host. It handles cross-cutting concerns (logging, monitoring, networking, security) so your app doesn't have to. Your app does its job, the sidecar does the infrastructure stuff.

```
Pod / Host
┌────────────────────────────────┐
│  ┌──────────┐  ┌────────────┐  │
│  │ Your App │  │  Sidecar   │  │
│  │          │←→│            │  │
│  │ (business│  │ (logging,  │  │
│  │  logic)  │  │  proxy,    │  │
│  │          │  │  metrics)  │  │
│  └──────────┘  └────────────┘  │
│         shared network         │
└────────────────────────────────┘
```

**Examples:** [Envoy](https://github.com/envoyproxy/envoy) (in Istio), [Datadog Agent](https://github.com/DataDog/datadog-agent), [Fluentd](https://github.com/fluent/fluentd) log collector
