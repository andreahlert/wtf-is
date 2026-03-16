# WTF is Fluentd?

An open-source log collector that unifies logging across your infrastructure. It collects logs from many sources (files, containers, syslog), transforms them, and routes them to many destinations (Elasticsearch, S3, Kafka). A CNCF graduated project and common alternative to Logstash.

```
  Sources                 Fluentd          Destinations
  ┌──────────┐           ┌───────┐        ┌─────────────┐
  │ App logs │──────────▶│       │──────▶│ Elasticsearch│
  │ Nginx    │──────────▶│ Parse │──────▶│ S3           │
  │ Docker   │──────────▶│ Filter│──────▶│ Kafka        │
  │ Syslog   │──────────▶│ Route │──────▶│ Datadog      │
  └──────────┘           └───────┘        └─────────────┘
```

**Examples:** [Fluentd](https://github.com/fluent/fluentd), [Fluent Bit](https://github.com/fluent/fluent-bit), [Fluentd Kubernetes](https://github.com/fluent/fluentd-kubernetes-daemonset)
