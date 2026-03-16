# WTF is a Secret (CI/CD)?

An encrypted variable stored in your CI system that holds sensitive data like API keys, tokens, or passwords. Secrets are injected as environment variables at runtime and masked in logs.

```
Settings --> Secrets --> Add:
  NAME: DEPLOY_TOKEN
  VALUE: ghp_abc123... (encrypted at rest)

Workflow:
  steps:
    - run: deploy --token $DEPLOY_TOKEN
      env:
        DEPLOY_TOKEN: ${{ secrets.DEPLOY_TOKEN }}

In logs: "deploy --token ***"  (masked)
```

**Examples:** [GitHub Encrypted Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets), [GitLab CI Variables](https://docs.gitlab.com/ee/ci/variables/), [Vault](https://github.com/hashicorp/vault)
