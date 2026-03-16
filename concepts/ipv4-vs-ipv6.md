# WTF is IPv4 vs IPv6?

IPv4 uses 32-bit addresses (about 4.3 billion total), and we've run out. IPv6 uses 128-bit addresses (340 undecillion), so we'll never run out again. IPv6 also removes the need for NAT since every device can have a globally unique address. They're not directly compatible, so networks often run both (dual-stack).

```
IPv4: 192.168.1.1          IPv6: 2001:0db8:85a3::8a2e:0370:7334

IPv4 address space:         IPv6 address space:
  32 bits                     128 bits
  4,294,967,296 addresses     340,282,366,920,938,000,000,
  (exhausted)                 000,000,000,000,000,000 addresses
                              (enough for every atom on Earth)

Dual-stack host:
  ┌─────────────────┐
  │  eth0            │
  │  IPv4: 10.0.0.5 │
  │  IPv6: fd00::5   │
  └─────────────────┘
```

**Examples:** [test-ipv6.com](https://test-ipv6.com/), [ipcalc](https://github.com/kjokjo/ipcalc), [go-ipv6](https://github.com/mikioh/ipaddr)
