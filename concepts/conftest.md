# WTF is Conftest?

A tool that runs OPA/Rego policies against structured config files: Terraform, Kubernetes YAML, Dockerfiles, and more. It lets you write tests for your configuration the same way you write tests for code.

```
# policy/deny.rego
deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.securityContext
  msg := "Deployments must set securityContext"
}

$ conftest test deployment.yaml
FAIL - deployment.yaml - Deployments must set securityContext

$ conftest test --policy policy/ k8s/ terraform/ docker/
```

**Examples:** [Conftest](https://github.com/open-policy-agent/conftest), [conftest docs](https://www.conftest.dev/), [OPA](https://github.com/open-policy-agent/opa)
