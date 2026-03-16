# WTF is TCP vs UDP?

TCP guarantees delivery, order, and error-checking at the cost of latency. UDP skips all of that and just sends packets as fast as possible. Use TCP when you need every byte (web pages, file transfers). Use UDP when you need speed and can tolerate loss (video calls, games, DNS queries).

```
            TCP                         UDP
  ┌─────────────────────┐    ┌─────────────────────┐
  │ Connection-oriented  │    │ Connectionless       │
  │ Ordered delivery     │    │ No ordering          │
  │ Retransmission       │    │ No retransmission    │
  │ Flow control         │    │ No flow control      │
  │ Higher latency       │    │ Lower latency        │
  │                      │    │                      │
  │ HTTP, SSH, FTP       │    │ DNS, VoIP, Gaming    │
  └─────────────────────┘    └─────────────────────┘
```

**Examples:** [iperf3](https://github.com/esnet/iperf), [netcat](https://github.com/nmap/nmap), [socat](https://github.com/3ndG4me/socat)
