# WTF is Full-Text Search?

Full-text search lets you find documents by matching words in their content, not just exact string comparison. It handles stemming ("running" matches "run"), ranking results by relevance, ignoring stop words ("the", "a"), and matching across multiple fields. It's what powers every search bar that actually works.

```
  Query: "running shoes"

  ┌──────────────────────────────────────┐
  │ Tokenize → stem → lookup index      │
  │                                      │
  │ "running" → "run"  → docs [3,7,12]  │
  │ "shoes"   → "shoe" → docs [3,5,7]   │
  │                                      │
  │ Intersect + rank → [3, 7, 12, 5]    │
  └──────────────────────────────────────┘
```

**Examples:** [Elasticsearch](https://github.com/elastic/elasticsearch), [Meilisearch](https://github.com/meilisearch/meilisearch), [Typesense](https://github.com/typesense/typesense)
