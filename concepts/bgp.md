# WTF is BGP?

BGP (Border Gateway Protocol) is the routing protocol that glues the internet together. It's how autonomous systems (large networks like ISPs, cloud providers, and companies) tell each other which IP ranges they can reach. When you visit a website, BGP is what determined the path your packets took across multiple networks to get there.

```
AS 64500 (ISP-A)        AS 64501 (ISP-B)       AS 64502 (Cloud)
┌──────────────┐        ┌──────────────┐        ┌──────────────┐
│ 203.0.113.0  │  BGP   │              │  BGP   │ 198.51.100.0 │
│    /24       │<------>│              │<------>│    /24        │
└──────────────┘        └──────────────┘        └──────────────┘

ISP-B learns:
  "203.0.113.0/24 reachable via AS 64500"
  "198.51.100.0/24 reachable via AS 64502"

Picks best path based on: AS path length, policies, preferences
```

**Examples:** [BIRD](https://github.com/CZ-NIC/bird), [FRRouting](https://github.com/FRRouting/frr), [GoBGP](https://github.com/osrg/gobgp)
