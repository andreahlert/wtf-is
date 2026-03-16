# WTF is IaC Drift?

When your actual infrastructure no longer matches what's defined in your Infrastructure as Code files. Someone made a manual change in the console, a script modified a resource, or a deploy failed halfway. Now your code lies about reality.

```
Terraform code:              Actual cloud state:

resource "aws_instance" {    aws_instance:
  type = "t3.medium"           type = "t3.xlarge"  <-- DRIFT!
  tags = { env = "prod" }      tags = { env = "prod",
}                                       owner = "bob" }  <-- DRIFT!

$ terraform plan
~ aws_instance.web
    type:  "t3.xlarge" -> "t3.medium"
    tags:  remove "owner"
```

**Examples:** [Terraform](https://github.com/hashicorp/terraform), [driftctl](https://github.com/snyk/driftctl), [AWS Config](https://aws.amazon.com/config/)
