# WTF is Container Orchestration?

Managing the lifecycle of containers at scale: deciding where to run them, restarting crashed ones, scaling up when demand increases, and routing traffic between them. You tell it what you want, it figures out how.

```
You: "Run 5 copies of my app"

Orchestrator:
+--------+  +--------+  +--------+
| Node 1 |  | Node 2 |  | Node 3 |
| [app]  |  | [app]  |  | [app]  |
| [app]  |  |        |  | [app]  |
+--------+  +--------+  +--------+

App crashes? Orchestrator restarts it.
Traffic spikes? Orchestrator adds more.
```

**Examples:** [Kubernetes](https://github.com/kubernetes/kubernetes), [Nomad](https://github.com/hashicorp/nomad), [Docker Swarm](https://docs.docker.com/engine/swarm/)
