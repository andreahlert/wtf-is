# WTF is Golden File Testing?

Same idea as snapshot testing, but the "expected output" is stored as a standalone file (the golden file) that you check into version control. You run your code, diff the output against the golden file, and if they don't match, either your code has a bug or you need to update the golden file.

```
  Code output         Golden file
  ┌──────────┐       ┌──────────┐
  │ actual   │ diff  │ expected │
  │ output   │◄─────▶│ output   │
  └──────────┘       └──────────┘
       │                   │
       └── match? ✓ pass   │
           differ? ✗ fail ─┘
```

**Examples:** [go test (testdata/)](https://github.com/golang/go), [insta](https://github.com/mitsuhiko/insta), [Jest](https://github.com/jestjs/jest)
