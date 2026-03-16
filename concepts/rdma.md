# WTF is RDMA?

RDMA (Remote Direct Memory Access) lets one machine read or write directly to another machine's memory without involving the remote CPU or OS kernel. Data bypasses the entire network stack and goes straight from network card to memory. This gives microsecond latency and near-wire-speed throughput. It's used in HPC, AI training clusters, and high-frequency trading.

```
Traditional network I/O:
  App --> syscall --> kernel --> TCP stack --> NIC --> wire
  (multiple copies, CPU involved at every step)

RDMA:
  App --> NIC --> wire --> remote NIC --> remote memory
  (zero-copy, bypasses kernel and remote CPU)

  Machine A                    Machine B
  ┌──────────┐                ┌──────────┐
  │ App      │                │ Memory   │
  │   |      │                │  ↑       │
  │ RDMA NIC │===== wire ====>│ RDMA NIC │
  └──────────┘                └──────────┘
  No kernel, no remote CPU, no copies.

  Latency: ~1-2 microseconds (vs ~50-100us for TCP)
```

**Examples:** [RDMA-core](https://github.com/linux-rdma/rdma-core), [Mellanox OFED](https://github.com/Mellanox/rdma-core), [UCX](https://github.com/openucx/ucx)
