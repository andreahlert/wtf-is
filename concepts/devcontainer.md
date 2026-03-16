# WTF is a Dev Container?

A Docker container configured specifically as a development environment. Defined in `.devcontainer/devcontainer.json`, it specifies the base image, tools, extensions, and settings so every developer gets an identical setup.

```
.devcontainer/
  devcontainer.json
  Dockerfile

{
  "image": "mcr.microsoft.com/devcontainers/python:3.11",
  "features": { "ghcr.io/devcontainers/features/node:1": {} },
  "customizations": { "vscode": { "extensions": ["ms-python.python"] } },
  "postCreateCommand": "pip install -r requirements.txt"
}
```

**Examples:** [devcontainers spec](https://github.com/devcontainers/spec), [devcontainer features](https://github.com/devcontainers/features), [devcontainer CLI](https://github.com/devcontainers/cli)
