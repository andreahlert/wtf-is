# WTF is LSP?

Language Server Protocol. A standard for how editors talk to language-specific tools. Instead of every editor implementing Python/Go/Rust support separately, one language server works with any LSP-compatible editor.

```
Before LSP:              After LSP:

Editor A  <-> Python     Editor A  \
Editor A  <-> Go          Editor B  --> LSP <-- Python Server
Editor B  <-> Python      Editor C /           Go Server
Editor B  <-> Go                               Rust Server

M editors x N languages   M + N implementations
```

**Examples:** [LSP Specification](https://github.com/microsoft/language-server-protocol), [pyright](https://github.com/microsoft/pyright), [gopls](https://github.com/golang/tools/tree/master/gopls)
