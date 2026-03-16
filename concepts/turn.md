# WTF is TURN?

TURN (Traversal Using Relays around NAT) is the fallback when STUN can't establish a direct peer-to-peer connection. Instead of connecting directly, both peers send their traffic through a TURN relay server. It always works (even with symmetric NATs and strict firewalls) but adds latency and costs bandwidth on the relay server.

```
STUN works (direct):
  Peer A <=========> Peer B
  (no relay needed)

STUN fails, TURN relay:
  Peer A <---> TURN Server <---> Peer B
  (all traffic goes through the relay)

  Peer A              TURN Server           Peer B
    |                      |                   |
    |-- allocate port ---->|                   |
    |<-- relay addr -------|                   |
    |                      |<-- connect -------|
    |                      |                   |
    |== media ============>|== forward =======>|
    |<= media =============|<= forward =======|

TURN is expensive (bandwidth) but guarantees connectivity.
Used as last resort by ICE.
```

**Examples:** [coturn](https://github.com/coturn/coturn), [Pion TURN](https://github.com/pion/turn), [eturnal](https://github.com/processone/eturnal)
