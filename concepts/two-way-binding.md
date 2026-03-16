# WTF is Two-Way Data Binding?

When a UI element and a data model stay in sync in both directions. Change the input field, the variable updates. Change the variable, the input field updates. You do not write separate code for each direction. Common in form-heavy applications.

```
Two-way binding:

Variable: name = "Alice"  ◄──────► <input value="Alice">

User types "Bob" ──► name = "Bob"
Code sets name = "Eve" ──► input shows "Eve"
```

**Examples:** [Vue](https://github.com/vuejs/core), [Angular](https://github.com/angular/angular), [Svelte](https://github.com/sveltejs/svelte)
