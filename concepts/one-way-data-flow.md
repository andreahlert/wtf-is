# WTF is One-Way Data Flow?

Data flows in a single direction: from parent components down to children. Children cannot modify the data directly. Instead, they emit events or call callbacks to request changes from the parent. This makes it easier to trace where data comes from and where it changes.

```
One-way:                   Two-way:

Parent (owns data)         Parent ◄──► Child
  │                        (both can modify)
  ▼ props
Child (reads data)
  │
  ▲ events/callbacks
Parent (updates data)
```

**Examples:** [React](https://github.com/facebook/react), [Redux](https://github.com/reduxjs/redux), [Elm](https://github.com/elm/core)
