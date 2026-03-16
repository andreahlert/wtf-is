# WTF is Salt?

A configuration management and remote execution tool. It uses a master-minion architecture where the master pushes commands to minions over a fast ZeroMQ message bus. Can manage thousands of nodes in seconds.

```
Salt Master                     Minions
+----------+   ZeroMQ bus      +--------+
| states   | ================> | minion |
| pillars  |                   +--------+
+----------+                   +--------+
                               | minion |
$ salt '*' state.apply         +--------+
$ salt 'web*' cmd.run 'uptime'
```

**Examples:** [Salt](https://github.com/saltstack/salt), [SaltStack Formulas](https://github.com/saltstack-formulas), [Heist](https://github.com/saltstack/heist)
