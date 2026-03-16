# WTF is Transpiler?

A tool that converts source code from one language (or version) to another at the same level of abstraction. The most common use: turning modern JavaScript or TypeScript into older JavaScript that all browsers understand. Unlike a compiler that goes from high-level to machine code, a transpiler stays at the same level.

```
Input (modern JS):            Output (older JS):

const greet = (name) =>       var greet = function(name) {
  `Hello, ${name}`;             return "Hello, " + name;
                              };
```

**Examples:** [Babel](https://github.com/babel/babel), [SWC](https://github.com/swc-project/swc), [TypeScript](https://github.com/microsoft/TypeScript)
