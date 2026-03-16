# WTF is WireGuard?

A fast, modern VPN protocol built into the Linux kernel. It uses around 4,000 lines of code (vs OpenVPN's 100,000+), which makes it simpler to audit and faster to connect. Each peer has a public/private key pair, no certificates needed.

```
Peer A                          Peer B
+--------+  encrypted UDP  +--------+
| pubkey | <==============>| pubkey |
| 10.0.0.1|                | 10.0.0.2|
+--------+                 +--------+

Config is ~10 lines:
[Peer]
PublicKey = ...
AllowedIPs = 10.0.0.2/32
Endpoint = b.example.com:51820
```

**Examples:** [WireGuard](https://github.com/WireGuard), [Tailscale](https://github.com/tailscale/tailscale), [Netbird](https://github.com/netbirdio/netbird)
