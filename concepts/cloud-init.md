# WTF is Cloud-Init?

The industry standard for customizing cloud VMs on first boot. When a new instance starts, cloud-init reads a config (user-data) and sets up users, installs packages, writes files, and runs scripts, all before anyone logs in.

```
Launch VM with user-data:

#cloud-config
packages:
  - nginx
  - git
runcmd:
  - systemctl start nginx

Boot sequence:
  [VM starts] --> [cloud-init reads user-data]
              --> [installs nginx, git]
              --> [starts nginx]
              --> [ready]
```

**Examples:** [cloud-init](https://github.com/canonical/cloud-init), [AWS EC2 User Data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html), [GCP Startup Scripts](https://cloud.google.com/compute/docs/instances/startup-scripts)
