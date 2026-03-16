# WTF is OSPF?

OSPF (Open Shortest Path First) is a routing protocol used inside a single organization's network. Unlike BGP which routes between networks, OSPF finds the shortest path between routers within your own infrastructure. Every router builds a complete map of the network topology and uses Dijkstra's algorithm to calculate the best routes.

```
Your internal network:

  Router A ----cost:10---- Router B
     |                        |
  cost:5                   cost:5
     |                        |
  Router C ----cost:1---- Router D

To get from A to D:
  Path 1: A -> B -> D  (cost: 10+5 = 15)
  Path 2: A -> C -> D  (cost: 5+1  = 6)  ← OSPF picks this

Each router has the full map and computes
shortest paths independently.
```

**Examples:** [FRRouting](https://github.com/FRRouting/frr), [BIRD](https://github.com/CZ-NIC/bird), [Quagga](https://github.com/Quagga/quagga)
