# WTF is Nix?

A package manager and build system that creates completely reproducible environments. Every package is stored with a hash of its inputs, so you can guarantee the same dependencies everywhere, forever.

```
/nix/store/
  abc123-python-3.11.0/
  def456-nodejs-20.0.0/
  ghi789-myapp-1.0.0/     # built from exact inputs
       ├── depends on abc123-python
       └── depends on def456-nodejs

Different versions coexist, no conflicts.
```

**Examples:** [Nix](https://github.com/NixOS/nix), [nixpkgs](https://github.com/NixOS/nixpkgs), [devenv](https://github.com/cachix/devenv)
