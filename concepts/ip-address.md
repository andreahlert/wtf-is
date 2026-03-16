# WTF is IP Address?

An IP address is a unique number assigned to every device on a network so data knows where to go. IPv4 uses four numbers (like 192.168.1.1), and IPv6 uses a longer hex format (like 2001:db8::1). Public IPs are routable on the internet, while private IPs (10.x, 172.16-31.x, 192.168.x) only work within local networks.

```
Public Internet            Private Network (192.168.1.0/24)
                           ┌──────────────────────────┐
                           │  192.168.1.1  (router)   │
 203.0.113.50 ────────────>│  192.168.1.10 (laptop)   │
 (public IP)               │  192.168.1.11 (phone)    │
                           │  192.168.1.12 (server)   │
                           └──────────────────────────┘
                           NAT translates between
                           public and private IPs
```

**Examples:** [ipcalc](https://github.com/kjokjo/ipcalc), [whatismyip](https://www.whatismyip.com/), [ipinfo](https://github.com/ipinfo/cli)
