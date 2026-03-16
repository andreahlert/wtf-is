# WTF is a Rootless Container?

A container that runs entirely without root privileges on the host. If the container is compromised, the attacker has no root access to the host machine. Both the container runtime and the containers themselves run as a regular user.

```
Traditional:                 Rootless:

Host (root)                  Host (regular user)
  └── dockerd (root)           └── dockerd (uid 1000)
       └── container                └── container
           (root inside              (uid mapped to
            = root on host)           unprivileged range)

Escape = root on host       Escape = unprivileged user
```

**Examples:** [Rootless Docker](https://docs.docker.com/engine/security/rootless/), [Podman](https://github.com/containers/podman), [Rootless Containers](https://rootlesscontaine.rs/)
