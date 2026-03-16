# WTF is ICMP?

ICMP (Internet Control Message Protocol) is used by network devices to send error messages and operational information. It's the protocol behind `ping` (echo request/reply) and `traceroute` (time exceeded messages). It doesn't carry application data; it's purely for diagnostics and network control, like telling a sender that a destination is unreachable.

```
Common ICMP messages:

  ping:
  Host A --- Echo Request ---> Host B
  Host A <-- Echo Reply ------ Host B

  unreachable:
  Host A --- packet ---------> Router --- X (no route)
  Host A <-- Destination       Router
             Unreachable

  traceroute:
  Host A --- TTL=1 ---> Router1 ---> (expired)
  Host A <-- Time Exceeded --- Router1
  Host A --- TTL=2 ---> Router1 ---> Router2 ---> (expired)
  Host A <-- Time Exceeded ---------- Router2
```

**Examples:** [ping](https://github.com/iputils/iputils), [mtr](https://github.com/traviscross/mtr), [fping](https://github.com/schweikert/fping)
