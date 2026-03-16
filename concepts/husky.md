# WTF is Husky?

A tool that makes it easy to set up Git hooks in JavaScript/Node.js projects. It installs hooks via `npm install` so the whole team gets the same pre-commit, pre-push, and commit-msg checks.

```
package.json
  "prepare": "husky"

.husky/
  pre-commit     --> npx lint-staged
  commit-msg     --> npx commitlint --edit $1

npm install --> hooks installed automatically
```

**Examples:** [Husky](https://github.com/typicode/husky), [lint-staged](https://github.com/lint-staged/lint-staged), [lefthook (alternative)](https://github.com/evilmartians/lefthook)
