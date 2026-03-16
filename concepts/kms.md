# WTF is KMS?

KMS (Key Management Service) is a managed service that creates, stores, and controls encryption keys for you. Instead of storing encryption keys in your app config or environment variables, KMS handles key generation, rotation, access control, and audit logging. You send data to KMS to encrypt/decrypt, and the key never leaves the service.

```
Without KMS:
  App stores encryption key in env var
  Key leaked → attacker decrypts everything

With KMS:
  ┌──────┐    "encrypt this"    ┌──────┐
  │ App  │─────────────────────▶│ KMS  │
  └──────┘◀─────────────────────└──────┘
           returns ciphertext     │
                                  │ key never
                                  │ leaves KMS
                                  │
                              access policies +
                              audit logs
```

**Examples:** [AWS KMS](https://aws.amazon.com/kms/), [Google Cloud KMS](https://cloud.google.com/kms), [HashiCorp Vault Transit](https://github.com/hashicorp/vault)
