# WTF is Image Pull Policy?

A Kubernetes setting that controls when a container image is pulled from the registry. "Always" pulls every time (good for :latest tags), "IfNotPresent" uses the cached image if available, "Never" only uses locally cached images.

```
imagePullPolicy:

Always:       pull from registry every time
              (slow, but always fresh)

IfNotPresent: use local cache if image exists
              (fast, default for tagged images)

Never:        only use local image, fail if missing
              (for pre-loaded/air-gapped nodes)

containers:
  - name: app
    image: myapp:v2
    imagePullPolicy: IfNotPresent
```

**Examples:** [Kubernetes Image Pull Policy](https://kubernetes.io/docs/concepts/containers/images/#image-pull-policy), [containerd](https://github.com/containerd/containerd), [CRI-O](https://github.com/cri-o/cri-o)
