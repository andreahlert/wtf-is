# WTF is a Package Manager?

A package manager installs, updates, and removes third-party libraries your project depends on. It resolves dependency trees, handles version conflicts, and downloads everything from a central registry so you don't have to do it manually.

```
$ npm install express

Package Manager:
  1. Read package.json
  2. Resolve dependency tree:
     express@4.18
       ├── body-parser@1.20
       │   └── bytes@3.1
       ├── cookie@0.5
       └── qs@6.11
  3. Download from registry
  4. Write lockfile
  5. Install to node_modules/
```

**Examples:** [npm](https://github.com/npm/cli), [pip](https://github.com/pypa/pip), [Cargo](https://github.com/rust-lang/cargo)
