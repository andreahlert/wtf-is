# WTF is lint-staged?

A tool that runs linters and formatters only on files staged for commit, not the entire project. This keeps pre-commit hooks fast even in large codebases.

```
git add src/app.js src/utils.js

pre-commit hook triggers lint-staged:
  src/app.js    --> eslint --fix, prettier --write
  src/utils.js  --> eslint --fix, prettier --write
  src/other.js  --> (not staged, skipped)
```

**Examples:** [lint-staged](https://github.com/lint-staged/lint-staged), [Husky](https://github.com/typicode/husky), [nano-staged (lightweight alternative)](https://github.com/usmanyunusov/nano-staged)
