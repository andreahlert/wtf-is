# WTF is a Chaos Test?

A test where you deliberately break things in production (or staging) to see if your system can handle it. Kill a server, slow down the network, fill up a disk. The idea is that failures will happen eventually, so you'd rather find out how your system reacts on your own terms.

```
  ┌─────────┐    ┌─────────┐    ┌─────────┐
  │ Service │    │ Service │    │ Service │
  │    A    │    │    B    │    │    C    │
  └────┬────┘    └────┬────┘    └────┬────┘
       │              │    💥         │
       │              KILL            │
       │                              │
       └──── does the system survive? ┘
```

**Examples:** [Chaos Monkey](https://github.com/Netflix/chaosmonkey), [Litmus](https://github.com/litmuschaos/litmus), [Chaos Mesh](https://github.com/chaos-mesh/chaos-mesh)
