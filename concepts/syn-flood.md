# WTF is SYN Flood?

A SYN flood is a DDoS attack that exploits the TCP three-way handshake. The attacker sends thousands of SYN packets (connection requests) with spoofed source IPs. The server responds with SYN-ACK and waits for an ACK that never comes, filling up its connection table. Eventually it can't accept new legitimate connections.

```
Normal TCP:                   SYN Flood:

Client    Server              Attacker      Server
  |--SYN--->|                   |--SYN (fake IP 1)->|  half-open
  |<-SYN-ACK|                   |--SYN (fake IP 2)->|  half-open
  |--ACK--->|                   |--SYN (fake IP 3)->|  half-open
  (complete)                    |--SYN (fake IP 4)->|  half-open
                                |      ...x10000    |  TABLE FULL
                                                    |  ✗ legit users
                                                       can't connect

Defense: SYN cookies (server doesn't store state until ACK arrives)
```

**Examples:** [SYN cookies in Linux](https://github.com/torvalds/linux), [hping3](https://github.com/antirez/hping), [FastNetMon](https://github.com/pavel-odintsov/fastnetmon)
