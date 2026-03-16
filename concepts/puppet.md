# WTF is Puppet?

A configuration management tool where an agent on each server periodically pulls its desired state from a central Puppet server and enforces it. Uses its own declarative language to define what packages, files, and services should exist.

```
Puppet Server                   Managed Nodes
+------------+                 +--------+
| manifests  | <-- pull every  | agent  |
| (desired   |    30 min       +--------+
|  state)    |                 +--------+
+------------+                 | agent  |
                               +--------+

node 'web' {
  package { 'nginx': ensure => installed }
  service { 'nginx': ensure => running }
}
```

**Examples:** [Puppet](https://github.com/puppetlabs/puppet), [Puppet Forge](https://forge.puppet.com), [r10k](https://github.com/puppetlabs/r10k)
