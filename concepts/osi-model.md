# WTF is OSI Model?

The OSI model is a conceptual framework that breaks networking into 7 layers, from physical wires up to applications. Each layer has a specific job and talks to the layers above and below it. In practice nobody implements it literally, but it's the universal vocabulary for describing where a network problem or protocol lives.

```
Layer 7  Application    HTTP, FTP, SMTP, DNS
Layer 6  Presentation   TLS/SSL, compression, encoding
Layer 5  Session        session management, sockets
Layer 4  Transport      TCP, UDP (ports)
Layer 3  Network        IP, ICMP, routing (IP addresses)
Layer 2  Data Link      Ethernet, WiFi (MAC addresses)
Layer 1  Physical       cables, radio signals, voltages

"The problem is at Layer 8" = the user.
```

**Examples:** [Wireshark](https://github.com/wireshark/wireshark), [Scapy](https://github.com/secdev/scapy), [PacketSender](https://github.com/dannagle/PacketSender)
