# WTF is AbortController?

A browser API that lets you cancel asynchronous operations like fetch requests, event listeners, or any promise-based task. You create a controller, pass its signal to the operation, and call `abort()` when you want to cancel. Essential for cleaning up requests when a component unmounts or a user navigates away.

```
const controller = new AbortController();

fetch('/api/data', { signal: controller.signal })
  .then(res => res.json())
  .catch(err => console.log('Aborted'));

// User navigates away:
controller.abort();  // fetch is cancelled
```

**Examples:** [Axios](https://github.com/axios/axios), [TanStack Query](https://github.com/TanStack/query), [ky](https://github.com/sindresorhus/ky)
