# WTF is the USE Method?

A monitoring method for infrastructure resources: Utilization (how busy), Saturation (how overloaded), and Errors (how broken). Apply it to every resource: CPU, memory, disk, network. Created by Brendan Gregg. USE is for hardware/infra, RED is for services.

```
  For each resource (CPU, disk, network...):

  U - Utilization: % time busy    "CPU at 85%"
  S - Saturation:  queue depth    "12 tasks waiting"
  E - Errors:      error count    "3 disk I/O errors"

  CPU:     U=85%   S=12   E=0    ← overloaded
  Memory:  U=60%   S=0    E=0    ← fine
  Disk:    U=30%   S=0    E=3    ← errors!
```

**Examples:** [Prometheus node_exporter](https://github.com/prometheus/node_exporter), [Grafana](https://github.com/grafana/grafana), [Brendan Gregg's USE](https://www.brendangregg.com/usemethod.html)
