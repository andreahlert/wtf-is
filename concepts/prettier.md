# WTF is Prettier?

An opinionated code formatter that rewrites your code to a consistent style. It supports JS, TS, CSS, HTML, JSON, Markdown, and more. You don't argue about formatting, Prettier decides.

```
Before:                      After prettier:

const x={a:1,                const x = {
b:2,c:   3}                    a: 1,
function foo(     ){          b: 2,
return x}                      c: 3,
                             };
                             function foo() {
                               return x;
                             }
```

**Examples:** [Prettier](https://github.com/prettier/prettier), [prettier-vscode](https://github.com/prettier/prettier-vscode), [pretty-quick](https://github.com/prettier/pretty-quick)
