# WTF is Podman vs Docker?

Podman is a Docker-compatible container engine that runs without a daemon and defaults to rootless mode. Same CLI commands, same images, but no background service needed and better security out of the box.

```
Docker:                     Podman:

$ docker run nginx          $ podman run nginx
       |                           |
       v                           v
  docker CLI               podman CLI
       |                           |
       v                           v
  dockerd (daemon, root)   fork/exec (no daemon)
       |                           |
       v                           v
  containerd               conmon + runc
       |                           |
       v                           v
  container (root)         container (rootless)
```

**Examples:** [Podman](https://github.com/containers/podman), [Docker](https://github.com/moby/moby), [Buildah](https://github.com/containers/buildah)
