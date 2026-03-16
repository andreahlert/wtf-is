# WTF is an Iterator?

An iterator is an object that lets you traverse a collection one element at a time without exposing the underlying structure. It has a `next()` method that returns the next element or signals that there are no more.

```
iter = [10, 20, 30].iter()

iter.next()  → Some(10)
iter.next()  → Some(20)
iter.next()  → Some(30)
iter.next()  → None       // done

// Works the same whether it's an array, linked list,
// file, or network stream:
for item in iterable:
    process(item)
```

**Examples:** [Rust Iterator trait](https://doc.rust-lang.org/std/iter/trait.Iterator.html), [Python itertools](https://github.com/python/cpython/blob/main/Lib/itertools.py), [Java Iterator](https://docs.oracle.com/javase/8/docs/api/java/util/Iterator.html)
