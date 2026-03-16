# WTF is Port?

A port is a 16-bit number (0-65535) that identifies a specific service on a machine. While an IP address gets packets to the right computer, the port gets them to the right application. Well-known ports include 80 (HTTP), 443 (HTTPS), 22 (SSH), and 5432 (PostgreSQL). Ports below 1024 require root privileges on Unix.

```
Server at 10.0.0.5:

  Port 22  ──> SSH daemon
  Port 80  ──> NGINX (HTTP)
  Port 443 ──> NGINX (HTTPS)
  Port 5432 ─> PostgreSQL
  Port 6379 ─> Redis

Client connects to 10.0.0.5:443
  ──> routed to NGINX

Port ranges:
  0-1023      Well-known (need root)
  1024-49151  Registered
  49152-65535 Ephemeral (client-side)
```

**Examples:** [nmap](https://github.com/nmap/nmap), [ss/netstat](https://github.com/iproute2/iproute2), [lsof](https://github.com/lsof-org/lsof)
