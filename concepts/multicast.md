# WTF is Multicast?

Multicast sends one packet that gets delivered to multiple recipients who opted in to a group, without sending individual copies to each one. The network handles duplication at the router level. It's used for live video streaming, IPTV, and stock market feeds where the same data goes to many receivers simultaneously.

```
Unicast (1 copy each):       Multicast (1 copy, network splits):

  Server                       Server
   |  |  |                       |
   v  v  v                     Router
  A  B   C                    / | \
  (3 copies sent)             A  B  C
                              (1 copy sent, routers duplicate)

Multicast group: 239.1.1.1
  - Host A: "join 239.1.1.1"  (IGMP join)
  - Host B: "join 239.1.1.1"
  - Host C: "join 239.1.1.1"
  - Server sends to 239.1.1.1 once
```

**Examples:** [smcroute](https://github.com/troglobit/smcroute), [pimd](https://github.com/troglobit/pimd), [Wireshark](https://github.com/wireshark/wireshark)
