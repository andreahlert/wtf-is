# WTF is a Load Balancer?

A thing that distributes incoming traffic across multiple servers so no single server gets overwhelmed. If one server dies, it stops sending traffic there. It's how you go from "one server handles everything" to "many servers share the work."

```
Without:                        With:
                                           ┌→ [server 1] ✓
[all traffic] → [server]        [traffic] → [LB] ─┼→ [server 2] ✓
                   │                          │    └→ [server 3] ✗ (dead)
                 💀 overloaded                │
                                              └── stops sending
                                                  traffic to server 3
```

**Examples:** [AWS ALB/NLB](https://aws.amazon.com/elasticloadbalancing/), [Nginx](https://github.com/nginx/nginx), [HAProxy](https://github.com/haproxy/haproxy), [Cloudflare LB](https://www.cloudflare.com/load-balancing/)
