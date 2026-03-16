# WTF is TCP?

TCP (Transmission Control Protocol) is a protocol that guarantees data arrives in order and without errors. It does this by establishing a connection first (three-way handshake), then tracking every packet with sequence numbers and requiring acknowledgments. If something gets lost, it retransmits.

```
Client                Server
  |--- SYN ------------>|
  |<-- SYN-ACK ---------|
  |--- ACK ------------>|
  |                      |
  |--- Data (seq=1) --->|
  |<-- ACK (ack=2) -----|
  |--- Data (seq=2) --->|
  |<-- ACK (ack=3) -----|
  |                      |
  |--- FIN ------------>|
  |<-- FIN-ACK ---------|
```

**Examples:** [Linux Kernel TCP](https://github.com/torvalds/linux/tree/master/net/ipv4), [mTCP](https://github.com/mtcp-stack/mtcp), [smoltcp](https://github.com/smoltcp-rs/smoltcp)
