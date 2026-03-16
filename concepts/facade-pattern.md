# WTF is Facade Pattern?

A simplified interface to a complex subsystem. Instead of calling 10 different classes to place an order, you call `OrderFacade.place(order)` and it handles all the complexity behind the scenes. Reduces coupling between your code and the messy internals.

```
  Client          Facade           Subsystem
  ┌──────┐    ┌────────────┐    ┌───────────┐
  │      │    │            │───►│ Inventory │
  │ App  │───►│ OrderFacade│───►│ Payment   │
  │      │    │ .place()   │───►│ Shipping  │
  └──────┘    │            │───►│ Email     │
              └────────────┘    └───────────┘
  one call       hides          many classes
```

**Examples:** [Laravel Facades](https://github.com/laravel/framework), [jQuery](https://github.com/jquery/jquery), [AWS SDK](https://github.com/aws/aws-sdk-js-v3)
