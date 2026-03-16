# WTF is Configuration Management?

Automating the setup and maintenance of servers so they stay in a desired state. You declare what packages, files, and services should exist, and a tool enforces that across all your machines. No more manual SSH-and-pray.

```
Desired State (code):        Actual Servers:
+-----------------+          +------+ +------+ +------+
| nginx: installed|  apply   | srv1 | | srv2 | | srv3 |
| port: 443       | ------> | nginx| | nginx| | nginx|
| config: X       |          | :443 | | :443 | | :443 |
+-----------------+          +------+ +------+ +------+
```

**Examples:** [Ansible](https://github.com/ansible/ansible), [Puppet](https://github.com/puppetlabs/puppet), [Chef](https://github.com/chef/chef)
