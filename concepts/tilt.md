# WTF is Tilt?

A dev tool that gives you a live-updating dashboard for your Kubernetes microservices. It watches code, rebuilds, and hot-reloads containers with smart syncing (avoids full rebuilds when possible). Shows logs, status, and errors in a single UI.

```
$ tilt up

Tilt Dashboard (localhost:10350):
+-------------------------------------+
| Service   | Status  | Build Time    |
| frontend  | ✓ OK    | 2.1s (synced) |
| backend   | ✓ OK    | 3.4s (built)  |
| database  | ✓ OK    | cached        |
+-------------------------------------+

Edit code --> Tilt syncs files --> app reloads
```

**Examples:** [Tilt](https://github.com/tilt-dev/tilt), [Skaffold](https://github.com/GoogleContainerTools/skaffold), [DevSpace](https://github.com/devspace-sh/devspace)
