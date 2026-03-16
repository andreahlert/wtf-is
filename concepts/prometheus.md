# WTF is Prometheus?

An open-source time-series database and monitoring system. Your services expose metrics at a `/metrics` endpoint, and Prometheus scrapes (pulls) them at regular intervals. It has a powerful query language (PromQL) for slicing and dicing metrics, and built-in alerting rules.

```
  Service A ──/metrics──┐
  Service B ──/metrics──┼──▶ Prometheus
  Service C ──/metrics──┘    (scrapes every 15s)
                                  │
                          ┌───────┼────────┐
                          ▼       ▼        ▼
                       PromQL  Alerts   Grafana
                       queries  rules   dashboards
```

**Examples:** [Prometheus](https://github.com/prometheus/prometheus), [Alertmanager](https://github.com/prometheus/alertmanager), [node_exporter](https://github.com/prometheus/node_exporter)
