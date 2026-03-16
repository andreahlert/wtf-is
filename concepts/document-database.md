# WTF is a Document Database?

A document database stores data as self-contained documents (usually JSON or BSON) instead of rows in tables. Each document can have a different structure, so you don't need a fixed schema. Related data is often nested inside the same document instead of split across tables.

```
  Relational:                   Document DB:
  ┌────────┐  ┌──────────┐     ┌──────────────────────┐
  │ users  │  │ addresses │     │ {                    │
  │ id: 1  │──│ user: 1  │     │   "name": "Alice",   │
  │ name.. │  │ city:... │     │   "address": {       │
  └────────┘  └──────────┘     │     "city": "NYC"    │
  2 tables + JOIN               │   }                  │
                                │ }                    │
                                └──────────────────────┘
                                1 document, no JOINs
```

**Examples:** [MongoDB](https://github.com/mongodb/mongo), [CouchDB](https://github.com/apache/couchdb), [Firestore](https://firebase.google.com/docs/firestore)
