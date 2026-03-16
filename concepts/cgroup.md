# WTF is a cgroup?

A Linux kernel feature that limits and tracks how much CPU, memory, disk I/O, and network a group of processes can use. It's one of the two pillars that make containers work (the other being namespaces).

```
Without cgroups:
  Process A uses ALL the CPU, starves everything else

With cgroups:
  /sys/fs/cgroup/
    +-- container-1/  (max 2 CPU, 512MB RAM)
    |     +-- process A
    |     +-- process B
    +-- container-2/  (max 1 CPU, 256MB RAM)
          +-- process C
```

**Examples:** [Linux cgroups v2](https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html), [Docker](https://github.com/moby/moby), [systemd](https://github.com/systemd/systemd)
