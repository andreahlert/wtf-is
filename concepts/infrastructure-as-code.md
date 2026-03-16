# WTF is Infrastructure as Code?

Managing servers, databases, networks and cloud resources by writing config files instead of clicking buttons in a dashboard. You define what you want in code, run a command, and it creates or updates the infrastructure. Version controlled, reviewable, repeatable.

```
Old way:                          IaC:
1. Log into AWS console           1. Write:
2. Click "Create Instance"           resource "aws_instance" "web" {
3. Pick settings from dropdowns         instance_type = "t3.micro"
4. Click "Launch"                       ami = "ami-123456"
5. Pray you remember what              }
   you clicked next time           2. Run: terraform apply
                                   3. Same result every time
```

**Examples:** [Terraform](https://github.com/hashicorp/terraform), [Pulumi](https://github.com/pulumi/pulumi), [AWS CloudFormation](https://aws.amazon.com/cloudformation/), [Crossplane](https://github.com/crossplane/crossplane)
