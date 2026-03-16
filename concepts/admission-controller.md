# WTF is an Admission Controller?

A gatekeeper that intercepts requests to the Kubernetes API before objects are persisted. It can validate (reject bad requests) or mutate (modify requests) before they're saved. Used to enforce policies like "all pods must have resource limits."

```
kubectl apply
      |
      v
[Authentication] --> [Authorization] --> [Admission Controllers]
                                          |            |
                                       Mutating    Validating
                                       (modify)    (accept/reject)
                                          |            |
                                          v            v
                                       [etcd] (persisted)

Example: reject pods without resource limits
```

**Examples:** [OPA Gatekeeper](https://github.com/open-policy-agent/gatekeeper), [Kyverno](https://github.com/kyverno/kyverno), [Pod Security Admission](https://kubernetes.io/docs/concepts/security/pod-security-admission/)
