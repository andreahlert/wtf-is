# WTF is Principle of Least Privilege?

Principle of Least Privilege means every user, process, and service should have only the minimum permissions needed to do its job. A web server doesn't need root access. A billing service doesn't need to read user passwords. When something gets compromised, the damage is limited to what it had access to.

```
  ✗  Every service has admin access
     App compromised → attacker owns everything

  ✓  Each service has minimal permissions
     ┌──────────┐
     │ Web App  │ → can read products, write orders
     ├──────────┤
     │ Billing  │ → can read orders, write invoices
     ├──────────┤
     │ Reports  │ → can read (nothing), no writes
     └──────────┘

     App compromised → attacker can only see products
```

**Examples:** [AWS IAM](https://aws.amazon.com/iam/), [Open Policy Agent](https://github.com/open-policy-agent/opa), [Vault](https://github.com/hashicorp/vault)
