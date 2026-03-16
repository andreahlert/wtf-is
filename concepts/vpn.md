# WTF is a VPN?

An encrypted tunnel between two networks (or a device and a network) over the public internet. Makes your device behave as if it's on the remote network. Used to connect offices, access private cloud resources, or secure traffic on untrusted networks.

```
Your laptop          Internet          Private Network
+--------+     encrypted tunnel     +---------------+
| VPN    | ========================| VPN Gateway   |
| Client |     (looks like noise)  |  10.0.0.0/16  |
+--------+                         +---------------+
  now has IP 10.0.0.50               can reach 10.0.x.x
```

**Examples:** [WireGuard](https://github.com/WireGuard), [OpenVPN](https://github.com/OpenVPN/openvpn), [Tailscale](https://github.com/tailscale/tailscale)
