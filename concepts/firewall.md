# WTF is Firewall?

A firewall filters network traffic based on rules you define. It decides which packets are allowed in or out based on source/destination IP, port, protocol, and connection state. It sits between trusted and untrusted networks and blocks everything you haven't explicitly allowed (or allows everything you haven't explicitly blocked, depending on your default policy).

```
Internet              Firewall                 Internal Network
                  ┌──────────────┐
  ──traffic──>    │ Rules:       │
                  │ ✓ 443 in     │──> Web server
  ──traffic──>    │ ✓ 22 in      │──> SSH
                  │ ✗ 3306 in    │  X MySQL (blocked)
  ──traffic──>    │ ✗ all other  │  X (dropped)
                  │ ✓ all out    │<── outbound OK
                  └──────────────┘
```

**Examples:** [iptables/nftables](https://github.com/torvalds/linux/tree/master/net/netfilter), [ufw](https://github.com/jbq/ufw), [pfSense](https://github.com/pfsense/pfsense)
