# WTF is an Init Container?

A container that runs and completes before the main containers in a pod start. Used to set up prerequisites: waiting for a database to be ready, downloading config files, or running migrations. They run one at a time, in order.

```
Pod startup sequence:

[init-1: wait for DB] --> done
[init-2: run migrations] --> done
[main: app container] --> starts and keeps running

If init-1 fails, init-2 never runs.
If init-2 fails, main never starts.
```

**Examples:** [Kubernetes Init Containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/), [Istio](https://github.com/istio/istio), [Vault Agent](https://github.com/hashicorp/vault-k8s)
