# WTF is a Codespace?

A cloud-hosted dev environment by GitHub. It spins up a VM with your repo, dev container config, and a VS Code instance in the browser (or locally). You code without setting up anything on your machine.

```
GitHub repo
    |
    v
Click "Create Codespace"
    |
    v
Cloud VM spins up
  ├── clones your repo
  ├── builds devcontainer
  ├── installs dependencies
  └── opens VS Code (browser or local)
    |
    v
Start coding immediately
```

**Examples:** [GitHub Codespaces](https://github.com/features/codespaces), [Codespaces Docs](https://docs.github.com/en/codespaces), [devcontainers spec](https://github.com/devcontainers/spec)
