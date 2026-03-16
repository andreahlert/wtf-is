# WTF is Change Data Capture?

Track every insert, update, and delete in your database and stream those changes as events. Instead of modifying your app code to emit events, CDC reads the database's own transaction log. Your app writes to the DB normally, and CDC picks up the changes automatically.

```
  App          Database          CDC           Consumers
  ┌───┐    ┌────────────┐    ┌────────┐    ┌──────────┐
  │   │───►│ data table │    │ read   │───►│ Search   │
  │   │    │            │    │ tx log │───►│ Cache    │
  └───┘    │ tx log ────┼───►│        │───►│ Analytics│
           └────────────┘    └────────┘    └──────────┘
           writes normally   no app changes needed
```

**Examples:** [Debezium](https://github.com/debezium/debezium), [Maxwell](https://github.com/zendesk/maxwell), [Apache Flink CDC](https://github.com/apache/flink-cdc)
