# WTF is Conflict Resolution?

Conflict resolution is how a distributed system decides what to do when two nodes modify the same data at the same time. Common strategies include last-write-wins (use timestamps), merge the changes automatically, or flag it for manual resolution. The right strategy depends on whether you can tolerate losing a write.

```
  Node A: SET name = "Alice"  @ t=100
  Node B: SET name = "Bob"    @ t=101

  Strategy 1: Last-Write-Wins
  → name = "Bob" (t=101 > t=100), Alice's write is lost

  Strategy 2: CRDT (merge)
  → both values kept, app decides how to merge

  Strategy 3: Manual
  → flag conflict, let user pick
```

**Examples:** [CouchDB](https://github.com/apache/couchdb), [Riak](https://github.com/basho/riak), [Yjs](https://github.com/yjs/yjs)
