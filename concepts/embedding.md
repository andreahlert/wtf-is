# WTF is an Embedding?

A way to convert text, images, or other data into an array of numbers (a vector) that captures its meaning. Similar things get similar vectors. "cat" and "kitten" end up close together in vector space, "cat" and "airplane" end up far apart. This lets you do math on meaning: search by similarity, cluster related items, or detect duplicates.

```
Text → Embedding:
  "cat"      → [0.2, 0.8, 0.1, 0.9, ...]
  "kitten"   → [0.3, 0.7, 0.2, 0.8, ...]  ← close to "cat"
  "airplane" → [0.9, 0.1, 0.7, 0.2, ...]  ← far from "cat"

Use cases:
  Search:     "find documents similar to this query"
  Clustering: "group these support tickets by topic"
  RAG:        "find relevant docs to answer this question"
  Dedup:      "are these two descriptions the same thing?"
```

**Examples:** OpenAI Embeddings API, Sentence-Transformers, Cohere Embed, Google Gecko
