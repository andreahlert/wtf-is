# WTF is Grafana?

An open-source platform for building monitoring dashboards. It connects to data sources like Prometheus, Elasticsearch, Loki, and dozens more, then lets you create graphs, charts, and alerts. It doesn't store data itself; it visualizes data from other systems.

```
  Data Sources              Grafana            Users
  ┌────────────┐           ┌──────────┐
  │ Prometheus │──────────▶│          │──▶ Dashboards
  │ Loki       │──────────▶│ Grafana  │──▶ Alerts
  │ Elasticsearch──────────▶│          │──▶ Reports
  │ Datadog    │──────────▶│          │
  └────────────┘           └──────────┘
```

**Examples:** [Grafana](https://github.com/grafana/grafana), [Grafana Loki](https://github.com/grafana/loki), [Grafana Tempo](https://github.com/grafana/tempo)
