# WTF is a Rolling Update?

Replacing instances of your app one at a time (or in small batches) instead of all at once. At any point during the update, some instances run the old version and some run the new. Zero downtime if done right.

```
Time -->

[v1] [v1] [v1] [v1]   start
[v2] [v1] [v1] [v1]   1st replaced
[v2] [v2] [v1] [v1]   2nd replaced
[v2] [v2] [v2] [v1]   3rd replaced
[v2] [v2] [v2] [v2]   done
```

**Examples:** [Kubernetes Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/), [AWS ECS](https://aws.amazon.com/ecs/), [Nomad](https://github.com/hashicorp/nomad)
