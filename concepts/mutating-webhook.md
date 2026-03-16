# WTF is a Mutating Webhook?

A Kubernetes admission webhook that modifies (mutates) API requests before they're saved. When you create a pod, the webhook can automatically inject sidecars, add labels, set default values, or attach secrets without you changing your YAML.

```
You submit:                 Webhook modifies:
+----------------+          +---------------------+
| kind: Pod      |   --->   | kind: Pod           |
| containers:    |          | containers:         |
|   - app        |          |   - app             |
+----------------+          |   - sidecar (added) |
                            | labels:             |
                            |   env: prod (added) |
                            +---------------------+
```

**Examples:** [Istio Sidecar Injector](https://github.com/istio/istio), [Vault Agent Injector](https://github.com/hashicorp/vault-k8s), [Kyverno](https://github.com/kyverno/kyverno)
