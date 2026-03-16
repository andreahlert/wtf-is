# WTF is a CRDT?

A CRDT (Conflict-free Replicated Data Type) is a data structure that can be edited independently on multiple nodes and always merged without conflicts. No matter what order updates arrive, all nodes converge to the same state. CRDTs power real-time collaboration tools where multiple users edit the same document simultaneously.

```
  Node A: counter = 3, increment → 4
  Node B: counter = 3, increment → 4

  Naive merge: last-write-wins → 4 (lost an increment!)

  G-Counter CRDT:
  Node A: {A:1, B:0} → {A:2, B:0}
  Node B: {A:1, B:0} → {A:1, B:1}
  Merge:  {A:2, B:1} → total = 3 ✓ (both counted)
```

**Examples:** [Yjs](https://github.com/yjs/yjs), [Automerge](https://github.com/automerge/automerge), [Riak](https://github.com/basho/riak)
