# WTF is Ansible?

An agentless automation tool that configures servers over SSH. You write playbooks in YAML describing the desired state, and Ansible connects to your machines and makes it happen. No agent to install on target servers.

```
Control Machine              Target Servers
+----------+     SSH         +--------+
| playbook | -------------> | server1 |
| .yaml    | -------------> | server2 |
+----------+                +--------+

- name: install nginx
  apt:
    name: nginx
    state: present
```

**Examples:** [Ansible](https://github.com/ansible/ansible), [AWX](https://github.com/ansible/awx), [Ansible Galaxy](https://galaxy.ansible.com)
