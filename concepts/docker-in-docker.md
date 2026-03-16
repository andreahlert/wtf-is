# WTF is Docker-in-Docker?

Running Docker inside a Docker container. Commonly needed in CI pipelines where the build agent is a container that needs to build other container images. There are two approaches: true DinD (nested daemon) or mounting the host's Docker socket.

```
Approach 1: True DinD           Approach 2: Socket mount
(docker:dind image)             (bind mount)

+-- Host ----------------+     +-- Host ----------------+
| Docker daemon           |     | Docker daemon          |
|  +-- Container -------+ |     |  +-- Container ------+ |
|  | Docker daemon       | |     |  | docker CLI       | |
|  |  +-- Container --+  | |     |  | /var/run/docker  | |
|  |  | app build     |  | |     |  |   .sock (mount)  | |
|  |  +---------------+  | |     |  +------------------+ |
|  +---------------------+ |     +-- builds on host -----+
+--------------------------+
```

**Examples:** [docker:dind](https://hub.docker.com/_/docker), [Kaniko](https://github.com/GoogleContainerTools/kaniko), [Buildah](https://github.com/containers/buildah)
