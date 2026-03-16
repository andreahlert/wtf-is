# WTF is Gitpod?

A cloud development environment that spins up a ready-to-code workspace from any Git repo. Similar to Codespaces but works with GitHub, GitLab, and Bitbucket. Configured via `.gitpod.yml`.

```
.gitpod.yml:
  image: gitpod/workspace-python
  tasks:
    - init: pip install -r requirements.txt
      command: python app.py

Browser: https://gitpod.io/#https://github.com/org/repo
    |
    v
Cloud workspace with VS Code or JetBrains IDE
```

**Examples:** [Gitpod](https://github.com/gitpod-io/gitpod), [Gitpod Docs](https://www.gitpod.io/docs), [gitpod-io/template-python](https://github.com/gitpod-io/template-python-django)
