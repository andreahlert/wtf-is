# WTF is TCP/IP Model?

The TCP/IP model is the practical, 4-layer networking model that the internet actually uses (unlike the theoretical 7-layer OSI model). It combines several OSI layers into simpler groups. Every packet you send follows this stack: your app creates data, TCP/UDP segments it, IP routes it, and the link layer puts it on the wire.

```
TCP/IP Model          OSI Model (for comparison)

Application    <-->   Application + Presentation + Session
  (HTTP, DNS)

Transport      <-->   Transport
  (TCP, UDP)

Internet       <-->   Network
  (IP, ICMP)

Link           <-->   Data Link + Physical
  (Ethernet, WiFi)

Packet encapsulation:
[Ethernet header [IP header [TCP header [HTTP data]]]]
```

**Examples:** [Linux networking stack](https://github.com/torvalds/linux/tree/master/net), [lwIP](https://github.com/lwip-tcpip/lwip), [smoltcp](https://github.com/smoltcp-rs/smoltcp)
