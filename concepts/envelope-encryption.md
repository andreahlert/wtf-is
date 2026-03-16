# WTF is Envelope Encryption?

Envelope Encryption is a two-layer encryption scheme. You encrypt your data with a "data encryption key" (DEK), then encrypt the DEK itself with a "key encryption key" (KEK) stored in a KMS. This way you get the speed of symmetric encryption for large data and the security of KMS-managed keys without sending all your data to KMS.

```
  ┌───────────┐
  │ Your Data │
  └───────────┘
       │ encrypt with DEK (fast, local)
       ▼
  ┌───────────────┐
  │ Encrypted Data│  stored together
  │ Encrypted DEK │  (the "envelope")
  └───────────────┘

  DEK encrypted by KEK (in KMS):
  ┌─────┐  encrypt DEK  ┌─────┐
  │ DEK │───────────────▶│ KMS │ holds KEK
  └─────┘◀───────────────└─────┘
         encrypted DEK

  To decrypt: KMS decrypts DEK → DEK decrypts data
```

**Examples:** [AWS KMS envelope encryption](https://aws.amazon.com/kms/), [Google Cloud KMS](https://cloud.google.com/kms/docs/envelope-encryption), [HashiCorp Vault Transit](https://github.com/hashicorp/vault)
