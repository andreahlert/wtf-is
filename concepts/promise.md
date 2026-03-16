# WTF is a Promise?

A promise represents a value that doesn't exist yet but will (or won't) in the future. It's a container for an asynchronous result with three states: pending, fulfilled, or rejected. You chain `.then()` to handle the result.

```
Promise states:
  ┌─────────┐
  │ Pending  │──── resolve(value) ──►  Fulfilled ✓
  │  (...)   │
  └────┬─────┘──── reject(error)  ──►  Rejected  ✗

fetch("/api/user")              // returns Promise
  .then(res => res.json())      // when fulfilled
  .then(user => display(user))  // chain more work
  .catch(err => log(err))       // if anything fails
```

**Examples:** [JavaScript Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise), [Bluebird](https://github.com/petkaantonov/bluebird), [Scala Future](https://github.com/scala/scala)
