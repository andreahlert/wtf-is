# WTF is Terraform State?

A file that tracks the mapping between your Terraform config and the real infrastructure it created. Without it, Terraform has no idea what already exists, so it would try to recreate everything from scratch. Usually stored remotely (S3, GCS) so teams can share it.

```
main.tf -----> terraform apply -----> AWS resources
                    |
                    v
              terraform.tfstate
              {
                "aws_instance.web": "i-0abc123"
              }
```

**Examples:** [Terraform](https://github.com/hashicorp/terraform), [OpenTofu](https://github.com/opentofu/opentofu), [Spacelift](https://spacelift.io)
