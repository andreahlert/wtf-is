# WTF is eBPF?

eBPF (extended Berkeley Packet Filter) lets you run sandboxed programs inside the Linux kernel without changing kernel code or loading kernel modules. You write small programs that hook into kernel events (network packets, syscalls, tracepoints), and the kernel verifies they're safe before running them. It's used for observability, networking, and security at kernel speed.

```
Traditional approach:          eBPF approach:
  Change kernel code             Write eBPF program
  Recompile kernel               Load at runtime
  Reboot                         No reboot, no modules
  (months of work)               (minutes)

  Userspace app
       |
  eBPF program loaded via bpf() syscall
       |
       v
  ┌─────────────────────────────────────┐
  │ Linux Kernel                        │
  │                                     │
  │  Hook points:                       │
  │   - Network (XDP, TC): filter/drop  │
  │   - Syscalls: trace, block          │
  │   - Tracepoints: observe            │
  │   - Scheduler: custom scheduling    │
  │                                     │
  │  Verifier ensures: no crashes,      │
  │  no infinite loops, bounded memory  │
  └─────────────────────────────────────┘
```

**Examples:** [Cilium](https://github.com/cilium/cilium), [bpftrace](https://github.com/bpftrace/bpftrace), [Falco](https://github.com/falcosecurity/falco)
