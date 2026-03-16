# WTF is a Graph Database?

A graph database stores data as nodes (entities) and edges (relationships) instead of rows and tables. Traversing relationships is a constant-time operation per hop, making it ideal for social networks, recommendation engines, and fraud detection where you need to follow chains of connections.

```
  ┌───────┐  FOLLOWS  ┌───────┐
  │ Alice │──────────▶│  Bob  │
  └───────┘           └───────┘
      │                   │
      │ LIKES             │ LIKES
      ▼                   ▼
  ┌───────┐           ┌───────┐
  │Post 1 │           │Post 2 │
  └───────┘           └───────┘

  Query: "friends of friends who liked X"
  → just traverse edges, no JOINs
```

**Examples:** [Neo4j](https://github.com/neo4j/neo4j), [Dgraph](https://github.com/dgraph-io/dgraph), [JanusGraph](https://github.com/JanusGraph/janusgraph)
