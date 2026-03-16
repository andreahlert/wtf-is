# WTF is Sidecar Injection?

Automatically adding a helper container (sidecar) to pods without modifying the original deployment YAML. A mutating webhook intercepts pod creation and injects the sidecar. Common for service mesh proxies, log collectors, and secret managers.

```
You deploy:                  What actually runs:
+----------+                 +----------+----------+
| your-app |    webhook      | your-app | envoy    |
+----------+  =========>    |          | (sidecar)|
                             +----------+----------+
                             (injected automatically)

Label namespace to enable:
  kubectl label ns default istio-injection=enabled
```

**Examples:** [Istio](https://github.com/istio/istio), [Linkerd](https://github.com/linkerd/linkerd2), [Vault Agent Injector](https://github.com/hashicorp/vault-k8s)
