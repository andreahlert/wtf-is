# WTF is systemd?

The init system and service manager for most Linux distributions. It starts and stops services, manages dependencies between them, handles logging, and is the first process (PID 1) that runs when Linux boots.

```
systemd (PID 1)
  |
  +-- networking.service
  +-- sshd.service
  +-- nginx.service  (After=network.target)
  +-- myapp.service  (After=nginx.service)

$ systemctl start myapp
$ systemctl enable myapp   # start on boot
$ journalctl -u myapp      # view logs
```

**Examples:** [systemd](https://github.com/systemd/systemd), [systemd-homed](https://systemd.io/HOME_DIRECTORY/), [Podman Quadlet](https://github.com/containers/podman)
