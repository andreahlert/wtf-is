# WTF are Traits?

Traits define a set of methods that a type must implement, without specifying how. They let unrelated types share behavior. Unlike inheritance, a type can implement many traits and you can add traits to existing types.

```
trait Printable {
    fn to_string(&self) -> String;
}

struct Dog { name: String }
struct Invoice { id: u32 }

impl Printable for Dog     { ... }
impl Printable for Invoice { ... }

fn print(item: &dyn Printable) {  // accepts anything Printable
    println!("{}", item.to_string());
}
```

**Examples:** [Rust Traits](https://doc.rust-lang.org/book/ch10-02-traits.html), [Scala Traits](https://github.com/scala/scala), [PHP Traits](https://www.php.net/manual/en/language.oop5.traits.php)
