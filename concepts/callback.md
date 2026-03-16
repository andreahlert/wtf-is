# WTF is a Callback?

A callback is a function you pass to another function, to be called later when something happens. It's the simplest way to handle asynchronous operations: "when you're done, call this function with the result."

```
// Synchronous callback
[3, 1, 2].sort((a, b) => a - b)    // sort calls your function

// Asynchronous callback
readFile("data.csv", (err, data) => {
    if (err) handle(err)       // called later when file is read
    else process(data)
})

// Timeline:
t=0  readFile(...)  → returns immediately
t=1  ...doing other work...
t=2  file ready → callback fires
```

**Examples:** [Node.js fs](https://github.com/nodejs/node), [Express middleware](https://github.com/expressjs/express), [jQuery ajax](https://github.com/jquery/jquery)
