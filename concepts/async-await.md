# WTF is Async/Await?

Async/await lets you write asynchronous code that looks like normal sequential code. The `async` keyword marks a function as asynchronous, and `await` pauses execution until a result is ready, without blocking the thread.

```
// Without async: callback nesting
getUser(id, (user) => {
    getOrders(user, (orders) => {
        getTotal(orders, (total) => {
            console.log(total)
        })
    })
})

// With async/await: reads top to bottom
async fn checkout(id):
    user   = await getUser(id)
    orders = await getOrders(user)
    total  = await getTotal(orders)
    print(total)
```

**Examples:** [JavaScript async/await](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Promises), [Rust Tokio](https://github.com/tokio-rs/tokio), [Python asyncio](https://github.com/python/cpython/tree/main/Lib/asyncio)
