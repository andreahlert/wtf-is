# WTF is MAC Address?

A MAC (Media Access Control) address is a hardware identifier burned into your network card. It's a 48-bit number written as six hex pairs (like AA:BB:CC:DD:EE:FF). Devices on the same local network use MAC addresses to talk to each other directly. Unlike IP addresses, MAC addresses work at the data link layer and don't leave your local network segment.

```
Local Network (same switch/WiFi)

  Laptop                 Switch               Server
  MAC: AA:11:22:33:44:55   |    MAC: BB:66:77:88:99:00
       |                   |         |
       |-- frame to ------>|-------->|
       |   dst: BB:66:...  |         |
       |                   |         |
  MAC = local delivery     IP = global routing
```

**Examples:** [macchanger](https://github.com/alobbs/macchanger), [Wireshark](https://github.com/wireshark/wireshark), [arp-scan](https://github.com/royhills/arp-scan)
