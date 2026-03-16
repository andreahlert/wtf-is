# WTF is Unicast?

Unicast is one-to-one communication where a packet is sent from one source to one specific destination. It's the most common type of network traffic. When you load a webpage, your browser sends a unicast request to one server and gets a unicast response back. If 100 clients want the same data, the server sends 100 separate copies.

```
Unicast:           Broadcast:          Multicast:
one-to-one         one-to-all          one-to-many

  S                  S                   S
  |                 /|\                 /|
  v                v v v               v v
  A               A B C D             A B
                  (everyone)          (subscribers only)

HTTP request:  unicast
DNS query:     unicast
ARP request:   broadcast
IPTV stream:   multicast
```

**Examples:** [curl](https://github.com/curl/curl), [netcat](https://github.com/nmap/nmap), [iperf3](https://github.com/esnet/iperf)
