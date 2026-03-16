# WTF is Packer?

A tool that builds identical machine images for multiple platforms from a single config. You define what OS, packages, and config an image should have, Packer creates it, and you use that image to launch servers. Key enabler of immutable infrastructure.

```
packer.pkr.hcl
+------------------+
| source: ubuntu   |     packer build .
| install: nginx   |  =================>
| copy: app config |
+------------------+
                        Output:
                        - AWS AMI: ami-abc123
                        - GCP Image: my-app-v2
                        - Docker: myapp:latest
```

**Examples:** [Packer](https://github.com/hashicorp/packer), [Packer Plugin AWS](https://github.com/hashicorp/packer-plugin-amazon), [Packer Plugin Docker](https://github.com/hashicorp/packer-plugin-docker)
