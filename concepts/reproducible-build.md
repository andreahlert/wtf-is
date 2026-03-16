# WTF is a Reproducible Build?

A build process where the same source code, build environment, and instructions always produce a bit-for-bit identical output. Anyone can verify that a binary was actually built from the claimed source code.

```
Source code + Build env + Build instructions
    |              |              |
    v              v              v
Build on machine A  ──> artifact hash: sha256:abc123
Build on machine B  ──> artifact hash: sha256:abc123  (identical!)
Build on machine C  ──> artifact hash: sha256:abc123  (identical!)

If hashes match, the binary matches the source.
If they differ, something was injected or modified.
```

**Examples:** [reproducible-builds.org](https://reproducible-builds.org/), [Nix](https://github.com/NixOS/nix), [Bazel](https://github.com/bazelbuild/bazel)
