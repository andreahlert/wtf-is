# WTF is Skaffold?

A CLI tool for continuous development on Kubernetes. It watches your source code, rebuilds the container image, and redeploys to your cluster on every save. Makes the inner dev loop for K8s feel like local development.

```
Save file
   |
   v
[Skaffold watches]
   |
   +-> build image
   +-> push to registry
   +-> deploy to K8s
   +-> stream logs

$ skaffold dev
Watching for changes...
[app] Building...
[app] Deploying...
[app] server started on :8080
```

**Examples:** [Skaffold](https://github.com/GoogleContainerTools/skaffold), [ko](https://github.com/ko-build/ko), [Tilt](https://github.com/tilt-dev/tilt)
