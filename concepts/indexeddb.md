# WTF is IndexedDB?

A browser-based database that stores large amounts of structured data on the client side. Unlike localStorage (which only stores strings up to ~5MB), IndexedDB handles objects, files, and blobs with no practical size limit. It is asynchronous, supports transactions, and uses indexes for fast lookups.

```
localStorage:                 IndexedDB:

Key-value strings only        Objects, blobs, files
~5MB limit                    Hundreds of MB+
Synchronous (blocks UI)       Asynchronous
No indexes                    Indexed for fast queries

db.put("users", { id: 1, name: "Alice", avatar: blob });
```

**Examples:** [Dexie.js](https://github.com/dexie/Dexie.js), [idb](https://github.com/jakearchibald/idb), [localForage](https://github.com/localForage/localForage)
