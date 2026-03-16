# WTF is a Vector Database?

A database optimized for storing and searching vectors (arrays of numbers). Used primarily in AI/ML: you convert text, images, or other data into vectors (embeddings), store them, and then search by similarity. "Find me the 10 most similar items to this one" is the core operation, not exact key lookups.

```
Traditional DB:
  SELECT * FROM products WHERE name = 'shoes'   ← exact match

Vector DB:
  "Find items similar to this image of shoes"
  → converts image to vector [0.2, 0.8, 0.1, ...]
  → searches for nearest vectors in the database
  → returns: sneakers, sandals, boots (similar, not exact)

How it works:
  [0.2, 0.8, 0.1] ← your query
  [0.3, 0.7, 0.2] ← close (similar item) ✓
  [0.9, 0.1, 0.8] ← far (different item)  ✗
```

**Examples:** Pinecone, Weaviate, Milvus, Qdrant, pgvector (PostgreSQL extension)
