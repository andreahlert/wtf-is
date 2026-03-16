# WTF is Git Blame?

It shows who last modified each line of a file and in which commit. Useful for understanding why a line exists and who to ask about it.

```
$ git blame server.js

a1b2c3d (Alice  2024-01-15)  const port = 3000;
e4f5g6h (Bob    2024-02-20)  app.use(cors());
a1b2c3d (Alice  2024-01-15)  app.listen(port);
i7j8k9l (Carol  2024-03-10)  // fix: handle SIGTERM
```

**Examples:** [git-blame docs](https://git-scm.com/docs/git-blame), [GitHub Blame View](https://docs.github.com/en/repositories/working-with-files/using-files/viewing-a-file), [GitLens](https://github.com/gitkraken/vscode-gitlens)
