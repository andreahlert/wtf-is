# WTF is PTR Record?

A PTR (Pointer) record does reverse DNS: it maps an IP address back to a hostname. While A records go from name to IP, PTR records go from IP to name. They're mainly used for email server verification (mail servers check if the sending IP resolves back to the claimed domain) and for logging/diagnostics.

```
Forward DNS (A record):
  example.com  -->  93.184.216.34

Reverse DNS (PTR record):
  93.184.216.34  -->  example.com

How it works in DNS:
  34.216.184.93.in-addr.arpa  PTR  example.com
  (IP octets reversed + .in-addr.arpa)

Email delivery check:
  Mail from: sender@example.com
  Sending IP: 93.184.216.34
  PTR lookup: 93.184.216.34 → example.com  ✓ matches
  (no PTR or mismatch = likely spam)
```

**Examples:** [PowerDNS](https://github.com/PowerDNS/pdns), [BIND9](https://github.com/isc-projects/bind9), [dnscontrol](https://github.com/StackExchange/dnscontrol)
