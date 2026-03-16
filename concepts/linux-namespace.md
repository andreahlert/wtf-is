# WTF is a Linux Namespace?

A kernel feature that isolates what a process can see. Each namespace type hides a different resource: PID namespace gives a process its own process tree, network namespace gives its own network stack, mount namespace gives its own filesystem view. This is the other pillar that makes containers work.

```
Host:
  PID 1 (init), PID 500 (nginx), PID 501 (app)

Container (PID namespace):
  PID 1 (app)    <-- thinks it's PID 1
  (can't see host processes)

Namespace types:
  pid, net, mnt, uts, ipc, user, cgroup
```

**Examples:** [Linux Namespaces](https://man7.org/linux/man-pages/man7/namespaces.7.html), [Docker](https://github.com/moby/moby), [bubblewrap](https://github.com/containers/bubblewrap)
