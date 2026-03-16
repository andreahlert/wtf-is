# WTF is a Service Account?

An identity used by applications (not humans) to authenticate and access resources. Instead of embedding personal credentials in your app, you give it a service account with only the permissions it needs.

```
Human:           User Account
                 (password, MFA, interactive login)

Application:     Service Account
                 (API key/token, no interactive login)

Pod --> ServiceAccount --> [can read secrets]
                      --> [can list pods]
                      --> [cannot delete anything]
```

**Examples:** [Kubernetes ServiceAccount](https://kubernetes.io/docs/concepts/security/service-accounts/), [GCP Service Accounts](https://cloud.google.com/iam/docs/service-accounts), [AWS IAM Roles](https://aws.amazon.com/iam/)
