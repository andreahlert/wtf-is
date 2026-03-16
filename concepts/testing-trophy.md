# WTF is the Testing Trophy?

An alternative to the test pyramid, proposed by Kent C. Dodds. It says integration tests give you the most confidence per dollar, so they should be the largest layer. The trophy shape has static analysis at the base, then unit, then a big integration layer, then a small E2E layer on top.

```
        ╱ E2E ╲           small
       ╱───────╲
      ╱         ╲
     │Integration │        largest ← best ROI
     │           │
      ╲─────────╱
       ╲ Unit  ╱           some
        ╲─────╱
       Static Analysis     base (linting, types)
```

**Examples:** [Testing Library](https://github.com/testing-library/react-testing-library), [MSW](https://github.com/mswjs/msw), [Vitest](https://github.com/vitest-dev/vitest)
