# WTF is QUIC?

QUIC is a transport protocol built on UDP that combines the reliability of TCP with built-in TLS 1.3 encryption and multiplexed streams. It establishes connections in a single round-trip (or zero for repeat connections). Packet loss on one stream doesn't block others, solving TCP's head-of-line blocking problem.

```
TCP + TLS handshake:          QUIC handshake:

Client       Server           Client       Server
  |--SYN------->|               |--Initial--->|
  |<-SYN-ACK----|               |<-Handshake--|
  |--ACK------->|               |--Finish---->|
  |--ClientHello>|              (1 RTT, ready to send)
  |<-ServerHello-|
  |--Finished--->|
  (3 RTT total)
```

**Examples:** [quiche (Cloudflare)](https://github.com/cloudflare/quiche), [msquic (Microsoft)](https://github.com/microsoft/msquic), [quinn](https://github.com/quinn-rs/quinn)
