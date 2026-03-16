# WTF is Callback Hell?

Callback hell is when nested callbacks stack so deep that code becomes an unreadable pyramid. Each async operation depends on the previous one, pushing the code further right. Promises and async/await were invented to fix this.

```
// The pyramid of doom
getUser(id, (err, user) => {
    getOrders(user, (err, orders) => {
        getItems(orders[0], (err, items) => {
            getPrice(items[0], (err, price) => {
                applyDiscount(price, (err, total) => {
                    charge(total, (err, receipt) => {
                        sendEmail(receipt, (err) => {
                            // help me
                        })
                    })
                })
            })
        })
    })
})
```

**Examples:** [callbackhell.com](http://callbackhell.com/), [Async.js](https://github.com/caolan/async), [Node.js util.promisify](https://github.com/nodejs/node)
