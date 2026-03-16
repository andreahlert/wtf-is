# WTF is Policy as Code?

Writing organizational rules (security, compliance, cost) as executable code that automatically evaluates infrastructure and deployments. Instead of a PDF checklist, you have a program that says yes or no.

```
Policy (code):                     Evaluation:

deny[msg] {                        Terraform plan
  input.resource.type              +-- S3 bucket
    == "aws_s3_bucket"               +-- public_access = true
  input.resource.public_access       |
    == true                          DENIED: "S3 buckets must
  msg := "S3 buckets must            not be publicly accessible"
    not be publicly accessible"
}
```

**Examples:** [OPA](https://github.com/open-policy-agent/opa), [Conftest](https://github.com/open-policy-agent/conftest), [Sentinel](https://www.hashicorp.com/sentinel)
