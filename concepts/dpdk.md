# WTF is DPDK?

DPDK (Data Plane Development Kit) is a set of libraries that lets applications process network packets entirely in userspace, bypassing the Linux kernel's network stack. The NIC is handed directly to the application, which polls for packets in a tight loop. This eliminates syscall overhead and context switches, achieving millions of packets per second on commodity hardware.

```
Traditional path:                DPDK path:
  NIC                              NIC
   |                                |
  Kernel driver                   DPDK PMD (poll-mode driver)
   |                                |
  Kernel network stack             Userspace application
   |                              (no kernel involvement)
  syscall
   |
  Userspace application

Performance:
  Kernel:  ~1-2 million packets/sec
  DPDK:    ~100+ million packets/sec (same hardware)

  Tradeoff: you own the NIC entirely.
  No iptables, no tcpdump, no kernel networking.
  You implement everything yourself.
```

**Examples:** [DPDK](https://github.com/DPDK/dpdk), [VPP (fd.io)](https://github.com/FDio/vpp), [Seastar](https://github.com/scylladb/seastar)
