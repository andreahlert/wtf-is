# WTF is a Helm Chart?

A package of pre-configured Kubernetes YAML files with templating. Instead of writing dozens of YAML manifests by hand, you install a chart and pass in your custom values. Think of it as apt-get for Kubernetes.

```
values.yaml          +  chart templates  =  rendered YAML
+-------------+        +-----------+        +-----------+
| replicas: 3 |   +    | deploy.yaml|  =>  | Full K8s  |
| port: 8080  |        | svc.yaml  |       | manifests |
+-------------+        +-----------+        +-----------+

$ helm install myapp ./chart -f values.yaml
```

**Examples:** [Helm](https://github.com/helm/helm), [Artifact Hub](https://artifacthub.io), [Bitnami Charts](https://github.com/bitnami/charts)
