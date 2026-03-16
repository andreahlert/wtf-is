# WTF is Strategy Pattern?

Define a family of algorithms, put each in its own class, and make them interchangeable. The client picks which strategy to use at runtime. Instead of a giant if/else chain for sorting, payment, or compression, you swap in the right strategy object.

```
  Context              Strategies
  ┌──────────┐     ┌───────────────┐
  │ Checkout │     │ CreditCardPay │
  │          │────►│ pay()         │
  │ strategy─┤     ├───────────────┤
  │          │     │ PayPalPay     │
  └──────────┘     │ pay()         │
                   ├───────────────┤
   set at runtime  │ CryptoPay     │
                   │ pay()         │
                   └───────────────┘
```

**Examples:** [passport.js](https://github.com/jaredhanson/passport), [scikit-learn](https://github.com/scikit-learn/scikit-learn), [Spring Security](https://github.com/spring-projects/spring-security)
