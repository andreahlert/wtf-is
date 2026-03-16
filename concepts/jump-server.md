# WTF is a Jump Server?

Another name for a bastion host. A server you connect to first in order to reach other servers in a private network. All administrative access is funneled through this one machine for auditing and access control.

```
Admin's laptop
      |
      v  SSH
+------------+
| Jump Server|  (public, hardened, logged)
+------------+
  |    |    |
  v    v    v   SSH
[srv1][srv2][srv3]  (private, no direct access)
```

**Examples:** [Teleport](https://github.com/gravitational/teleport), [Boundary](https://github.com/hashicorp/boundary), [Apache Guacamole](https://github.com/apache/guacamole-server)
