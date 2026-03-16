# WTF is the ELK Stack?

Three open-source tools used together for log management: Elasticsearch (search and store logs), Logstash (collect and transform logs), Kibana (visualize and explore logs). Ship your logs from all servers into ELK and search across everything from one UI.

```
  Servers/Apps
       │
       ▼
  Logstash ──▶ Elasticsearch ──▶ Kibana
  (collect,     (store,           (search,
   parse,        index)            visualize)
   transform)

  E = Elasticsearch
  L = Logstash
  K = Kibana
```

**Examples:** [Elasticsearch](https://github.com/elastic/elasticsearch), [Logstash](https://github.com/elastic/logstash), [Kibana](https://github.com/elastic/kibana)
