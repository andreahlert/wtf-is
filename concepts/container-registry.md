# WTF is a Container Registry?

A storage service for container images, like a package repository but for Docker images. You push images after building them, and pull them when deploying. Can be public or private.

```
Build         Push              Pull
docker build --> registry --> kubernetes node
                 +--------+
                 | myapp:1|
                 | myapp:2|
                 | nginx:3|
                 +--------+
```

**Examples:** [Docker Hub](https://hub.docker.com), [GitHub Container Registry](https://ghcr.io), [Harbor](https://github.com/goharbor/harbor)
