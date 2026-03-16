# WTF is a CronJob (Kubernetes)?

A Kubernetes resource that runs a pod on a schedule, like Unix cron but managed by the cluster. It creates a new Job at each scheduled time, which spawns a pod, runs to completion, and stops.

```
Schedule: "0 2 * * *"  (every day at 2am)

2:00 --> [Job-1] --> [Pod] --> run backup --> done
2:00 --> [Job-2] --> [Pod] --> run backup --> done
  (next day)

$ kubectl get cronjobs
NAME      SCHEDULE      LAST-RUN
backup    0 2 * * *     2h ago
```

**Examples:** [Kubernetes CronJob](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/), [Argo Workflows](https://github.com/argoproj/argo-workflows), [Kube-batch](https://github.com/kubernetes-sigs/kube-batch)
