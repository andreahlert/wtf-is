# WTF is a Process Supervisor?

A tool that starts, monitors, and restarts your processes. If a process crashes, the supervisor brings it back up automatically. It handles logging, signal forwarding, and dependency ordering.

```
Supervisor
  |
  ├── web-server     (running, pid 1234)
  |     └── crashed! --> auto-restart in 5s
  |
  ├── worker         (running, pid 1235)
  |
  └── scheduler      (running, pid 1236)

Config:
  [program:web]
  command=/usr/bin/gunicorn app:app
  autorestart=true
  startretries=3
```

**Examples:** [Supervisor](https://github.com/Supervisor/supervisor), [systemd](https://systemd.io/), [PM2](https://github.com/Unitech/pm2)
