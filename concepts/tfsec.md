# WTF is tfsec?

A static analysis tool that scans Terraform code for security misconfigurations before you deploy. It catches things like open security groups, unencrypted storage, and public buckets.

```
$ tfsec .

Result: aws-s3-no-public-access
  ├── Impact: Public S3 bucket exposes data
  ├── Resource: aws_s3_bucket.data
  ├── Location: main.tf:15-22
  └── Fix: Set block_public_acls = true

Result: aws-ec2-enforce-encryption
  ├── Impact: Unencrypted EBS volume
  └── Location: main.tf:30

3 issues found (2 critical, 1 high)
```

**Examples:** [tfsec (now part of Trivy)](https://github.com/aquasecurity/tfsec), [Trivy](https://github.com/aquasecurity/trivy), [Checkov](https://github.com/bridgecrewio/checkov)
