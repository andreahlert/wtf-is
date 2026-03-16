# WTF is a Bastion Host?

A hardened server in a public subnet that acts as the only entry point to reach servers in private subnets. You SSH into the bastion first, then SSH from there to internal machines. It reduces the attack surface by exposing just one server.

```
Internet
   |
   v
+----------+  public subnet
| Bastion  |  (only port 22 open)
+----------+
   |
   v  SSH hop
+----------+  private subnet
| App/DB   |  (no internet access)
+----------+
```

**Examples:** [AWS Session Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html), [Teleport](https://github.com/gravitational/teleport), [Boundary](https://github.com/hashicorp/boundary)
