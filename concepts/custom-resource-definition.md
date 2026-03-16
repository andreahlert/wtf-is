# WTF is a Custom Resource Definition (CRD)?

A way to extend the Kubernetes API with your own resource types. After creating a CRD, you can use kubectl to create, read, update, and delete instances of your custom type just like built-in resources (pods, services).

```
# Define a new type
apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
  name: databases.example.com

# Now use it like any K8s resource
apiVersion: example.com/v1
kind: Database
metadata:
  name: my-postgres
spec:
  engine: postgres
  version: "15"

$ kubectl get databases
```

**Examples:** [Kubernetes CRDs](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/), [Crossplane](https://github.com/crossplane/crossplane), [cert-manager](https://github.com/cert-manager/cert-manager)
