# WTF is ARP?

ARP (Address Resolution Protocol) translates IP addresses to MAC addresses on a local network. When your computer wants to send data to 192.168.1.5, it broadcasts "who has 192.168.1.5?" and the device with that IP replies with its MAC address. The result gets cached in an ARP table so it doesn't have to ask every time.

```
Laptop (192.168.1.10)              Server (192.168.1.5)
  |                                     |
  |-- ARP Request (broadcast) --------->|
  |   "Who has 192.168.1.5?            |
  |    Tell AA:11:22:33:44:55"         |
  |                                     |
  |<-- ARP Reply (unicast) ------------|
  |   "192.168.1.5 is at               |
  |    BB:66:77:88:99:00"              |
  |                                     |
  ARP table: 192.168.1.5 -> BB:66:77:88:99:00
```

**Examples:** [arp-scan](https://github.com/royhills/arp-scan), [Wireshark](https://github.com/wireshark/wireshark), [Scapy](https://github.com/secdev/scapy)
