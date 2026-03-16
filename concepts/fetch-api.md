# WTF is Fetch API?

The modern browser API for making HTTP requests, replacing the old XMLHttpRequest. It returns Promises, supports streaming responses, and works with Service Workers. It is built into every modern browser and Node.js 18+.

```
// GET request:
const res = await fetch('/api/users');
const data = await res.json();

// POST request:
await fetch('/api/users', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({ name: 'Alice' })
});
```

**Examples:** [node-fetch](https://github.com/node-fetch/node-fetch), [ky](https://github.com/sindresorhus/ky), [undici](https://github.com/nodejs/undici)
