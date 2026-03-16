# WTF is a Formatter?

A tool that rewrites your source code to follow a consistent style: indentation, spacing, line breaks, quotes. Unlike a linter, it doesn't find bugs, it just makes code look uniform.

```
Input (messy):              Output (formatted):

if(x){                      if (x) {
  foo(  a,b,                  foo(a, b, c);
       c)}                  }
```

**Examples:** [Prettier](https://github.com/prettier/prettier), [Black](https://github.com/psf/black), [gofmt](https://pkg.go.dev/cmd/gofmt)
