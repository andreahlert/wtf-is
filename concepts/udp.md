# WTF is UDP?

UDP (User Datagram Protocol) sends packets without establishing a connection and without guaranteeing delivery or order. It's faster than TCP because there's no handshake, no acknowledgments, and no retransmission. You use it when speed matters more than reliability, like video streaming or gaming.

```
Client                Server
  |--- Datagram 1 ----->|  (maybe arrives)
  |--- Datagram 2 ----->|  (maybe arrives)
  |--- Datagram 3 --X   |  (lost, nobody cares)
  |--- Datagram 4 ----->|  (maybe arrives)

No handshake. No ACK. No retransmit.
Just fire and forget.
```

**Examples:** [quinn (QUIC/UDP in Rust)](https://github.com/quinn-rs/quinn), [ENet](https://github.com/lsalzman/enet), [KCP](https://github.com/skywind3000/kcp)
