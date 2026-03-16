# WTF is AST (Abstract Syntax Tree)?

A tree representation of your source code's structure, built by a parser. Each node represents a construct like a function, variable, or operator. Tools like linters, transpilers, and formatters work by reading and transforming the AST instead of manipulating raw text strings.

```
Code: const x = 1 + 2;

AST:
  VariableDeclaration (const)
  └── VariableDeclarator
      ├── Identifier: x
      └── BinaryExpression (+)
          ├── Literal: 1
          └── Literal: 2
```

**Examples:** [Babel](https://github.com/babel/babel), [ESLint](https://github.com/eslint/eslint), [AST Explorer](https://astexplorer.net)
