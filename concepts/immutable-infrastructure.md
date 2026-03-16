# WTF is Immutable Infrastructure?

Servers are never modified after they're created. Instead of patching a running server, you build a new image with the changes and replace the old one entirely. No snowflake servers, no "works on my machine" drift.

```
Traditional:         Immutable:

Server v1            Server v1 (image A)
  |  ssh + patch        |
  v                  Build new image B
Server v1.1?            |
  |  ssh + patch     Replace server
  v                     |
Server v1.1.2?       Server v2 (image B)
  (drift!)           (clean every time)
```

**Examples:** [Packer](https://github.com/hashicorp/packer), [AWS AMI](https://aws.amazon.com/ec2/), [Google Compute Images](https://cloud.google.com/compute)
