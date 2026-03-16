# WTF is DAP?

Debug Adapter Protocol. Like LSP but for debuggers. A standard protocol so any editor can talk to any language's debugger. Set breakpoints, step through code, inspect variables, all through one interface.

```
Before DAP:                  After DAP:

VS Code <-> Python debugger   VS Code  \
VS Code <-> Go debugger       Neovim    --> DAP <-- debugpy
Neovim  <-> Python debugger   Emacs   /            delve
Neovim  <-> Go debugger                             lldb

M editors x N debuggers       M + N implementations
```

**Examples:** [DAP Specification](https://github.com/microsoft/debug-adapter-protocol), [debugpy](https://github.com/microsoft/debugpy), [nvim-dap](https://github.com/mfussenegger/nvim-dap)
