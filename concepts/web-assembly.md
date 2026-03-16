# WTF is WebAssembly?

A binary instruction format that lets you run code written in languages like C, C++, Rust, or Go in the browser at near-native speed. It runs alongside JavaScript, not instead of it. Use it for performance-critical tasks like image processing, games, or video editing that JavaScript is too slow for.

```
Source (C/Rust/Go)
    │
    ▼
Compile to .wasm (binary)
    │
    ▼
Browser loads .wasm ──► Runs at near-native speed
    │
    ◄──► JavaScript can call wasm functions and vice versa
```

**Examples:** [Emscripten](https://github.com/emscripten-core/emscripten), [wasm-pack](https://github.com/rustwasm/wasm-pack), [Pyodide](https://github.com/pyodide/pyodide)
