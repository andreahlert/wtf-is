# WTF is TTL?

TTL (Time to Live) has two meanings. In DNS, it's how many seconds a resolver should cache a record before asking again. In IP packets, it's a hop counter that decrements at each router and kills the packet at zero, preventing infinite loops. Both share the same idea: data should expire, not live forever.

```
DNS TTL:
  example.com  A  93.184.216.34  TTL=3600

  Resolver caches for 3600 seconds (1 hour).
  After that, re-queries the authoritative server.
  Low TTL = faster propagation, more queries.
  High TTL = fewer queries, slower changes.

IP TTL (hop limit):
  Packet leaves with TTL=64

  Host --> Router1 (TTL=63) --> Router2 (TTL=62) --> ...
  ... --> Router64 (TTL=0) --> DROPPED
  (sends ICMP "time exceeded" back)
  This is how traceroute works.
```

**Examples:** [dig](https://github.com/isc-projects/bind9), [mtr](https://github.com/traviscross/mtr), [dnscontrol](https://github.com/StackExchange/dnscontrol)
