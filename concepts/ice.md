# WTF is ICE?

ICE (Interactive Connectivity Establishment) is a framework that finds the best way to connect two peers through NATs and firewalls. It gathers multiple connection candidates (local IP, STUN-discovered public IP, TURN relay), tests them all in parallel, and picks the best working path. It's the glue that makes WebRTC connections reliable across any network.

```
Peer A gathers candidates:         Peer B gathers candidates:
  1. host:  192.168.1.5:5000        1. host:  10.0.0.3:6000
  2. srflx: 203.0.113.5:54321       2. srflx: 198.51.100.7:9876
  3. relay: 52.1.1.1:49000          3. relay: 52.1.1.2:49001

ICE connectivity checks (all pairs):
  A:host  <--> B:host     ✗ (different LANs)
  A:srflx <--> B:srflx    ✓ (NAT traversal works!)
  A:relay <--> B:relay     ✓ (always works, slower)

ICE picks: srflx <-> srflx (best working path)

Candidate types:
  host:  local network address
  srflx: server-reflexive (via STUN)
  relay: TURN relay (fallback)
```

**Examples:** [Pion ICE](https://github.com/pion/ice), [libnice](https://github.com/nicedreams/libnice), [coturn](https://github.com/coturn/coturn)
