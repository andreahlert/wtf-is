# WTF is Log Aggregation?

Collecting logs from many servers, containers, and services into one central place where you can search and analyze them. Without aggregation, debugging means SSH-ing into 50 different servers and grepping through files. With it, you search one dashboard.

```
  Server 1 ──┐
  Server 2 ──┤
  Server 3 ──┼──▶ Log Aggregator ──▶ Search UI
  Server 4 ──┤    (central store)
  Server 5 ──┘

  "Show me all errors from service-auth
   in the last hour" → instant results
```

**Examples:** [Elasticsearch/ELK](https://github.com/elastic/elasticsearch), [Loki](https://github.com/grafana/loki), [Fluentd](https://github.com/fluent/fluentd)
