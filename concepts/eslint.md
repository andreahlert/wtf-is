# WTF is ESLint?

A static analysis tool for JavaScript and TypeScript that finds problems in your code: bugs, bad patterns, style violations. You configure rules, and it flags or auto-fixes violations.

```
eslint src/

src/app.js
  3:10  error   'unused' is defined but never used   no-unused-vars
  7:1   warning  Unexpected console statement         no-console
  12:5  error   Missing return type                   @typescript-eslint/explicit-function-return-type

2 errors, 1 warning
```

**Examples:** [ESLint](https://github.com/eslint/eslint), [typescript-eslint](https://github.com/typescript-eslint/typescript-eslint), [eslint-plugin-react](https://github.com/jsx-eslint/eslint-plugin-react)
