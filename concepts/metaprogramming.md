# WTF is Metaprogramming?

Metaprogramming is code that writes or modifies other code. Instead of writing repetitive boilerplate by hand, you write a program that generates it. This can happen at compile time (macros) or runtime (reflection, eval).

```
// Without metaprogramming: write 10 similar functions
fn validate_name(s) { ... }
fn validate_email(s) { ... }
fn validate_phone(s) { ... }

// With metaprogramming: generate them
for field in ["name", "email", "phone"]:
    define_method(f"validate_{field}") { ... }

// Or at compile time (Rust macro):
#[derive(Debug, Serialize, Clone)]  // generates impl blocks
struct User { name: String }
```

**Examples:** [Rust macros](https://doc.rust-lang.org/book/ch19-06-macros.html), [Ruby metaprogramming](https://github.com/ruby/ruby), [Elixir macros](https://github.com/elixir-lang/elixir)
