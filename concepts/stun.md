# WTF is STUN?

STUN (Session Traversal Utilities for NAT) helps devices behind NAT discover their public IP address and port. When two peers want to connect directly (like in WebRTC), they first ask a STUN server "what's my public address?" Then they share these addresses and try to punch through their NATs. STUN works for most NAT types but fails with symmetric NATs, where you need TURN instead.

```
Device behind NAT            STUN Server
  |                              |
  |-- "What's my public IP?" -->|
  |                              |
  |<-- "You're 203.0.113.5     |
  |     port 54321" ------------|

Then for peer-to-peer:
  Peer A (behind NAT A)         Peer B (behind NAT B)
    |                               |
    |-- STUN: I'm 203.0.113.5:54321|
    |                               |
    |<-- STUN: I'm 198.51.100.7:9876
    |                               |
    |<======= direct connection ===>|
    (NAT hole-punching)
```

**Examples:** [coturn](https://github.com/coturn/coturn), [Pion STUN](https://github.com/pion/stun), [stunner](https://github.com/nicedreams/stunner)
