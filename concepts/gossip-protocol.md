# WTF is Gossip Protocol?

Each node periodically picks a random peer and shares its state. That peer passes it to another random peer, and so on. Like rumors spreading. Eventually every node knows everything. No central coordinator needed. Scales well but convergence isn't instant.

```
  Time 0:        Time 1:         Time 2:
  A* B  C  D    A* B* C  D     A* B* C* D*
  │              │  │            (all know)
  └──► B         └──► C
  (A tells B)   (B tells C,    Epidemic spread:
                 A tells D)    O(log N) rounds
```

**Examples:** [Cassandra](https://github.com/apache/cassandra), [Consul](https://github.com/hashicorp/consul), [memberlist](https://github.com/hashicorp/memberlist)
