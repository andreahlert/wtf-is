# WTF is Snapshot Testing?

A test that saves the output of your code (rendered HTML, API response, UI component) to a file, then compares future runs against that saved "snapshot." If the output changes unexpectedly, the test fails. If the change was intentional, you update the snapshot.

```
  First run:
    render(Component) → save to __snapshots__/

  Next runs:
    render(Component) → compare to saved snapshot
                            │
                  Match?  ──┤── Yes → ✓ pass
                            └── No  → ✗ review diff
```

**Examples:** [Jest Snapshots](https://github.com/jestjs/jest), [syrupy](https://github.com/syrupy-project/syrupy), [insta](https://github.com/mitsuhiko/insta)
