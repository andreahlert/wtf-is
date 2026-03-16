# WTF is Broadcast?

Broadcast sends a packet to every device on a local network segment. It's how devices discover each other when they don't know specific addresses yet. ARP uses broadcast to find MAC addresses, DHCP uses broadcast to find servers. Broadcast doesn't cross routers, which is why large networks are split into subnets.

```
Device A sends broadcast to 255.255.255.255

  Device A ---broadcast---> Switch
                              |
              ┌───────────────┼───────────────┐
              v               v               v
           Device B        Device C        Device D
           (receives)      (receives)      (receives)

              Router
              ------
              Broadcasts stop here.
              They don't cross routers.
```

**Examples:** [Wireshark](https://github.com/wireshark/wireshark), [Scapy](https://github.com/secdev/scapy), [arp-scan](https://github.com/royhills/arp-scan)
