# WTF is a Taskfile?

A YAML-based task runner (using the `task` command) that's a modern alternative to Make. It supports dependencies, variables, OS detection, and doesn't have Make's quirks with tabs and shell syntax.

```
# Taskfile.yml

version: '3'

tasks:
  build:
    deps: [lint, test]
    cmds:
      - docker build -t myapp .

  test:
    cmds:
      - pytest tests/

  lint:
    cmds:
      - ruff check src/
```

**Examples:** [Task](https://github.com/go-task/task), [Task Docs](https://taskfile.dev/), [Task Examples](https://taskfile.dev/usage/)
