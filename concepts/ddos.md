# WTF is DDoS?

DDoS (Distributed Denial of Service) is an attack where thousands of machines flood a target with so much traffic that legitimate users can't get through. The "distributed" part means the traffic comes from many sources (often a botnet of compromised devices), making it hard to block by IP. Common types include volumetric floods, SYN floods, and application-layer attacks.

```
Botnet (thousands of compromised machines)

  Bot1 ──┐
  Bot2 ──┤
  Bot3 ──┼──> massive traffic ──> Target Server
  Bot4 ──┤                         (overwhelmed)
  Bot5 ──┘

Mitigation:
  Bots ──> CDN/DDoS protection ──> scrubs traffic ──> Server
           (absorbs the flood)     (only clean traffic passes)
```

**Examples:** [Cloudflare DDoS Protection](https://www.cloudflare.com/ddos/), [FastNetMon](https://github.com/pavel-odintsov/fastnetmon), [GoBetween](https://github.com/yyyar/gobetween)
