# WTF is Refactoring?

Refactoring is changing code's internal structure without changing its external behavior. You improve readability, reduce complexity, or remove duplication while the tests keep passing. It's cleanup, not new features.

```
Before                          After
──────                          ─────
fn process(d) {                 fn process(d) {
  if d.type == "a" {               calculate_price(d)
    x = d.price * 0.9              send_receipt(d)
    send_email(d.email, x)     }
  } else if d.type == "b" {
    x = d.price * 0.8          fn calculate_price(d) -> float {
    send_email(d.email, x)         rates = {"a": 0.9, "b": 0.8}
  }                                 d.price * rates[d.type]
}                               }
```

**Examples:** [Refactoring Guru](https://refactoring.guru/), [OpenRewrite](https://github.com/openrewrite/rewrite), [jscodeshift](https://github.com/facebook/jscodeshift)
