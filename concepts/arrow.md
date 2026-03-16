# WTF is Apache Arrow?

Apache Arrow is an in-memory columnar data format designed for fast analytics. It defines a standard memory layout so different tools (Python, Java, Rust, C++) can share data without serialization or copying. Instead of converting between formats when passing data between systems, they all speak Arrow natively.

```
  Without Arrow:                 With Arrow:
  ┌──────┐  serialize  ┌──────┐  ┌──────┐  zero-copy  ┌──────┐
  │Pandas│────────────▶│Spark │  │Pandas│────────────▶│Spark │
  └──────┘  deserialize└──────┘  └──────┘  same memory └──────┘
            (slow, copies)                 (fast, no copies)

  Arrow memory layout (columnar):
  Column A: [1, 2, 3, 4, 5]  ← contiguous in memory
  Column B: [a, b, c, d, e]  ← CPU cache friendly
```

**Examples:** [Apache Arrow](https://github.com/apache/arrow), [arrow-rs](https://github.com/apache/arrow-rs), [Polars](https://github.com/pola-rs/polars)
