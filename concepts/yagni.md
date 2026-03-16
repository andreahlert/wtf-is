# WTF is YAGNI?

YAGNI stands for "You Aren't Gonna Need It." Don't build features or abstractions until you actually need them. Speculative code adds complexity now for a future that may never come.

```
// YAGNI violation: building for imaginary requirements
class UserService {
    fn get_user()
    fn get_user_with_cache()
    fn get_user_with_cache_and_retry()
    fn get_user_v2_with_graphql_support()    // nobody asked for this
}

// YAGNI: build what you need now
class UserService {
    fn get_user()
}
```

**Examples:** [Extreme Programming](http://www.extremeprogramming.org/rules/early.html), [Martin Fowler on YAGNI](https://martinfowler.com/bliki/Yagni.html), [The Pragmatic Programmer](https://pragprog.com/titles/tpp20/)
