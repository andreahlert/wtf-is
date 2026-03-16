# WTF is a Hermetic Test?

A test that runs in a completely sealed environment with zero external dependencies. No network calls, no shared file systems, no databases on other machines. Everything the test needs is self-contained. If you unplug the network cable, a hermetic test still passes.

```
  Non-hermetic:              Hermetic:
  ┌──────┐                  ┌──────────────────┐
  │ Test │──▶ real API      │ Test             │
  │      │──▶ shared DB     │  ├── fake API    │
  │      │──▶ network       │  ├── local DB    │
  └──────┘   (can break)    │  └── all bundled │
                            └──────────────────┘
                             (self-contained)
```

**Examples:** [Bazel](https://github.com/bazelbuild/bazel), [Testcontainers](https://github.com/testcontainers/testcontainers-java), [Nix](https://github.com/NixOS/nix)
