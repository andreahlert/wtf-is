# WTF is Docker Compose?

A tool for defining and running multi-container applications with a single YAML file. Instead of running multiple `docker run` commands with long flags, you describe all your services, networks, and volumes in one `compose.yaml` and start everything with one command.

```
compose.yaml:
  services:
    web:
      image: nginx
      ports: ["80:80"]
    api:
      build: ./api
      depends_on: [db]
    db:
      image: postgres

$ docker compose up
  [web]  started on :80
  [db]   started on :5432
  [api]  started on :3000
```

**Examples:** [Docker Compose](https://github.com/docker/compose), [Podman Compose](https://github.com/containers/podman-compose), [Kompose](https://github.com/kubernetes/kompose)
