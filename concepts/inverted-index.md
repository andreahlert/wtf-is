# WTF is an Inverted Index?

An inverted index maps every unique word to the list of documents that contain it. Instead of scanning every document to find which ones mention "database," you look up "database" in the index and instantly get the list. This is the core data structure behind full-text search engines.

```
  Documents:
  Doc 1: "the quick brown fox"
  Doc 2: "the lazy brown dog"
  Doc 3: "quick lazy fox"

  Inverted Index:
  ┌──────────┬────────────┐
  │ word     │ documents  │
  ├──────────┼────────────┤
  │ quick    │ [1, 3]     │
  │ brown    │ [1, 2]     │
  │ fox      │ [1, 3]     │
  │ lazy     │ [2, 3]     │
  │ dog      │ [2]        │
  └──────────┴────────────┘
```

**Examples:** [Lucene](https://github.com/apache/lucene), [Elasticsearch](https://github.com/elastic/elasticsearch), [Tantivy](https://github.com/quickwit-oss/tantivy)
