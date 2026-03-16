# WTF is Branch by Abstraction?

Replace a component gradually without creating a long-lived branch. Step 1: add an abstraction layer over the old code. Step 2: build the new implementation behind that abstraction. Step 3: switch from old to new. Step 4: remove the old code. All on trunk, all deployed continuously.

```
  Step 1:          Step 2:          Step 3:
  ┌─────────┐    ┌─────────┐     ┌─────────┐
  │Abstraction│   │Abstraction│    │Abstraction│
  └────┬─────┘   └──┬───┬──┘    └────┬─────┘
       │            │   │            │
       ▼            ▼   ▼            ▼
  ┌────────┐  ┌──────┐┌──────┐  ┌──────┐
  │  Old   │  │ Old  ││ New  │  │ New  │
  └────────┘  └──────┘└──────┘  └──────┘
   (in use)   (both exist)      (old removed)
```

**Examples:** [Scientist](https://github.com/github/scientist), [Martin Fowler's article](https://martinfowler.com/bliki/BranchByAbstraction.html), [Unleash](https://github.com/Unleash/unleash)
