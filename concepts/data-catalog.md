# WTF is a Data Catalog?

A data catalog is a searchable inventory of all data assets in your organization: tables, columns, descriptions, owners, lineage, and usage statistics. It answers "what data do we have, where is it, and who owns it?" so people can discover and understand data without asking around on Slack.

```
  Search: "customer revenue"

  ┌─────────────────────────────────────┐
  │ orders.total_revenue                │
  │ Owner: data-eng team                │
  │ Description: Monthly revenue by...  │
  │ Freshness: updated 2h ago           │
  │ Lineage: postgres → dbt → warehouse │
  │ Tags: #finance #verified            │
  └─────────────────────────────────────┘
```

**Examples:** [DataHub](https://github.com/datahub-project/datahub), [Amundsen](https://github.com/amundsen-io/amundsen), [OpenMetadata](https://github.com/open-metadata/OpenMetadata)
