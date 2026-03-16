# WTF is Kustomize?

A Kubernetes-native tool for customizing YAML manifests without templates. You keep a base set of manifests and create overlays that patch them for different environments. No Helm, no Go templates, just plain YAML composition.

```
base/
  deployment.yaml
  service.yaml
  kustomization.yaml

overlays/
  dev/
    kustomization.yaml   # patch replicas to 1
  prod/
    kustomization.yaml   # patch replicas to 5, add resources

$ kubectl apply -k overlays/prod/
```

**Examples:** [Kustomize](https://github.com/kubernetes-sigs/kustomize), [kubectl](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/), [Flux](https://github.com/fluxcd/flux2)
