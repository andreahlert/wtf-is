# WTF is Immutability?

Immutability means once a value is created, it never changes. Instead of modifying data in place, you create new copies with the changes applied. This eliminates a whole class of bugs from shared mutable state.

```
// Mutable                     // Immutable
list = [1, 2, 3]              list = [1, 2, 3]
list.push(4)                   new_list = [...list, 4]
// list is [1, 2, 3, 4]       // list is still [1, 2, 3]
// anyone sharing list         // new_list is [1, 2, 3, 4]
// sees the change             // original is untouched
```

**Examples:** [Immutable.js](https://github.com/immutable-js/immutable-js), [Immer](https://github.com/immerjs/immer), [Clojure](https://github.com/clojure/clojure)
