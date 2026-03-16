# WTF is a Container?

A lightweight, isolated environment that packages your app with everything it needs to run (code, dependencies, config). Unlike a VM, it shares the host OS kernel, so it starts in seconds and uses way less resources. Think of it as "your app in a box that runs the same everywhere."

```
Virtual Machine:                    Container:
┌─────────────┐                    ┌─────────────┐
│   Your App  │                    │   Your App  │
├─────────────┤                    ├─────────────┤
│  Libraries  │                    │  Libraries  │
├─────────────┤                    └──────┬──────┘
│  Guest OS   │                           │
├─────────────┤                    ┌──────┴──────┐
│ Hypervisor  │                    │ Container   │
├─────────────┤                    │ Runtime     │
│  Host OS    │                    ├─────────────┤
└─────────────┘                    │  Host OS    │
~500MB, minutes to start           └─────────────┘
                                   ~50MB, seconds to start
```

**Examples:** [Docker](https://github.com/moby/moby), [Podman](https://github.com/containers/podman), [containerd](https://github.com/containerd/containerd)
