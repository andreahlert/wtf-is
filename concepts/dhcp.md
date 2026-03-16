# WTF is DHCP?

DHCP (Dynamic Host Configuration Protocol) automatically assigns IP addresses to devices when they join a network. Instead of manually configuring every device, a DHCP server hands out IPs, subnet masks, gateways, and DNS servers from a pool. Leases expire after a set time, and devices must renew them.

```
New Device                    DHCP Server
  |                                |
  |-- DISCOVER (broadcast) ------->|  "I need an IP"
  |                                |
  |<-- OFFER ----------------------|  "How about 192.168.1.50?"
  |                                |
  |-- REQUEST -------------------->|  "Yes, I'll take it"
  |                                |
  |<-- ACK -----------------------|  "It's yours for 24 hours"
  |                                |     IP: 192.168.1.50
  |                                |     Gateway: 192.168.1.1
  |                                |     DNS: 8.8.8.8
```

**Examples:** [ISC DHCP](https://github.com/isc-projects/dhcp), [Kea](https://github.com/isc-projects/kea), [dnsmasq](https://github.com/imp/dnsmasq)
